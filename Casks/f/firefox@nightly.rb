cask "firefox@nightly" do
  version "141.0a1,2025-05-28-09-26-47"

  language "ca" do
    sha256 "c01d63653919b7bd035ae6e6bd99c9e3ce44701bb3a6c6f7e82c3901749f5944"
    "ca"
  end
  language "cs" do
    sha256 "73550e321a49ce983e6ba24c090741b8a33ac0207346c00adbf388584513a407"
    "cs"
  end
  language "de" do
    sha256 "3ced5b8de1629717a05e0a5b6bb676f817c28e127221b2516efe4ecb8d01930d"
    "de"
  end
  language "en-CA" do
    sha256 "2db169b2c81ac99a9e261e7d48801f67f95a7e7ae4611f1fbfe9b3777a43f87d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b6a4eeb5b15984bdda9074272948edbe69e55c3a5ac8abe3eff8c6c98d59da96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f599647b3686e18686c5c2dffb1f6096dd0303ba177225794ae7f99ecb5679ed"
    "en-US"
  end
  language "es" do
    sha256 "aaa6d131ce7bf37d2b81e0a1b1c12254548d261db5c1fdc2d8affd5f645aaf14"
    "es-ES"
  end
  language "fr" do
    sha256 "d53becebbf01fe07957552c07750bf6f02646c68306487e7e85b04e191dc07a6"
    "fr"
  end
  language "it" do
    sha256 "dabf787e141cc4ddf28613a31ccc6b7511baefbf8e45e7869fe0de8e165652aa"
    "it"
  end
  language "ja" do
    sha256 "cf19c89b2b2dd1dd0fd3cf08ca21ec372d1786b9a66ba39843f30422d53233e9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bd7a8b5514f61a56d1f9110e797aa68cd7d74a6d12a8d26eee88240c68830ff8"
    "ko"
  end
  language "nl" do
    sha256 "7e558f46dff7a59daf193254d3405ae4ec832ab3dced01d87380d1921deb6529"
    "nl"
  end
  language "pt-BR" do
    sha256 "71ca981524cd9a2362dbd7878c8ce81f594b9b49723192d24c433f1ca268b3dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "83c16036e8c961afa57f86fab84000b38f3a129e31d2fbf55f4e0a03afc4d303"
    "ru"
  end
  language "uk" do
    sha256 "50e00cbf40eb954567f04e12311064554f9fdcfa051eb0cf42071b1d5aeff5a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e78c8335addfab03fe976b9a48dd57761fafb57412cd9a61bc060f298936355"
    "zh-TW"
  end
  language "zh" do
    sha256 "69290e141453029fb7de280af17c7889baf7cf1392fc1f277d4f0ee6b00ed192"
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
  depends_on macos: ">= :catalina"

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
