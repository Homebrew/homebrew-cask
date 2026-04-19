cask "firefox@nightly" do
  version "151.0a1,2026-04-18-21-19-39"

  language "ca" do
    sha256 "b75a321c6213dbaaa0a6c681ea151224bb58469c275acdf6b90224ce1e80096c"
    "ca"
  end
  language "cs" do
    sha256 "ed2894499bca2b806e1a5512bb43aee2475a778e1be3706b06c6006a2202b10b"
    "cs"
  end
  language "de" do
    sha256 "ccc23d27b57eb497fc28999a6352fb8836e0e15c288cc8ec0f22021d8c8407d2"
    "de"
  end
  language "en-CA" do
    sha256 "122a99a4417d6e837eb43402d9db0bed5b05a13592dea0f14d8c0aed2d9469c5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "08f76c0fdf12b824a7f24fbf9e30f4426f4fa375278aad140f4c8f3c523210f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13511b6dfa0428082ed58a80de42041573ed6796edebd6b3faf164d976785442"
    "en-US"
  end
  language "es" do
    sha256 "c9ba8fcec4f95e8a4e909116f98687f67362526d07da607bb23471f10d43cb1a"
    "es-ES"
  end
  language "fr" do
    sha256 "e2946cfed4e430fe0b42bfa7e4ee01cbb463a0aacbc621f2fb4619be6165398f"
    "fr"
  end
  language "it" do
    sha256 "9608830a2961c40118940a67536149b315bd194e99ea8ba6eeb92211a8d5c26e"
    "it"
  end
  language "ja" do
    sha256 "6eade226b22ab5d979f3e7bb6963a3f114abbf93ce79756fd03cdd6a4f13aa66"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "324ffa064eb91d34be6c29a2a9a48bdb22a0995833095f142fd4c7440b9d5649"
    "ko"
  end
  language "nl" do
    sha256 "38ad8a3d7893e57de18f508e641f467c091214d754e868c484fa29aa389ba12c"
    "nl"
  end
  language "pt-BR" do
    sha256 "422b0185395a5420ffef4b896461bd9428014aada41f80304cd122adc016b648"
    "pt-BR"
  end
  language "ru" do
    sha256 "766a05ff39a9a1a2a9e4d2daec32a9410abfdf4c7d8d505eeba46630412ea34c"
    "ru"
  end
  language "uk" do
    sha256 "1f03cd965673a0d624efe5d9ac41791bf18b9a7af1ea01dd3fa5362a799d331a"
    "uk"
  end
  language "zh-TW" do
    sha256 "1f641c8f342404191c94cd71f083fdf23b32e6b9d0563bdbc13c082f160c0c71"
    "zh-TW"
  end
  language "zh" do
    sha256 "af5fe8ae8396508fde9b54c21e330202ed6bed9b4953ecf8a85ccd6d4a9a50b4"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
