cask "firefox@nightly" do
  version "161.0a1,2026-10-27-21-25-43"

  language "ca" do
    sha256 "250b2af084875d5d719c1b53cb6c6ea8671fafd68e0429c0050f11b6cfcbb901"
    "ca"
  end
  language "cs" do
    sha256 "8e32256a43bb2398d1648b0ddd21cc839b1cd799155d0502d8b51081d2531dce"
    "cs"
  end
  language "de" do
    sha256 "d90d3bfe664455685fa24dc95e7a76ecdf8eb659b78693e40623dcf657b4c3ab"
    "de"
  end
  language "en-CA" do
    sha256 "05e9802b99ee84e6f336b54d58d80fd17d1ee463df3cc3426826a02fe5460ffc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8890cea90f63b8b3a8a77b1deb20c54175af7d57bbf1a087a735fb8c232d5343"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aa96f12ca52a3a93fa684211074baf4721d1f5051755ee02e3e71206a2606fde"
    "en-US"
  end
  language "es" do
    sha256 "ac131fd392e2373004bc398bf932eef68ebbb69e46b5c7b174e39793ee586d86"
    "es-ES"
  end
  language "fr" do
    sha256 "f5a60e54cffd74a39ebc764213dc35aac4219b0f5bdcd63a5fa74821a50b0e35"
    "fr"
  end
  language "it" do
    sha256 "55bcacd6a597f0809330c79edce8a6e492455ac91f09758a99ffb78777c9f3de"
    "it"
  end
  language "ja" do
    sha256 "489dc94d75a2730bb825423943eff78ad38809cbd72342e9e0c4466b2062908d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "886d21f62fcdbf3f1a345ee7381f203f5f94a58a7fbf6e87e94c1e4045288c74"
    "ko"
  end
  language "nl" do
    sha256 "04691acba168d6ce9e97dfe586af63a63b6d22285325785106a03caaa1a0f355"
    "nl"
  end
  language "pt-BR" do
    sha256 "07669adb786b67ffdd71e636507e11880859343a79d689133f63d693a98274f3"
    "pt-BR"
  end
  language "ru" do
    sha256 "d400cd0825809dec9f5cf81a054cac8133e9da440ae69646153d0e4d03c44f53"
    "ru"
  end
  language "uk" do
    sha256 "d671aec6007d8f756a1ff2b44984d279927386ec83f9122759cdd29306679d41"
    "uk"
  end
  language "zh-TW" do
    sha256 "60962a4a41d08e27dbc640744b5259c44a401b291c8ac37ebc360b61af0244a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "58c93d6ac992e37340696b51a757edd47019520066f7ba8308384586010f1549"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
