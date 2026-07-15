cask "firefox@nightly" do
  version "154.0a1,2026-07-14-21-37-19"

  language "ca" do
    sha256 "dd4f08358962c2453d1416a52329850937002ec767386e45017ac3c815a8fe4e"
    "ca"
  end
  language "cs" do
    sha256 "ac92a1d77f9a2d5c2a7b21bb842d7644c410ce2b4f8135289129d4e285386588"
    "cs"
  end
  language "de" do
    sha256 "1142869f4036da969ebd06a487ce8c24a9709decce96c8c7a0c747697ff36bc2"
    "de"
  end
  language "en-CA" do
    sha256 "3a4e0eb5b4bbe0aa24d0c4447c5e7855a3389d83ba68a170f47f2fcc415a543e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0403b0f1d7941c7dedbcd488a877b0c56de6011fa035ecc717d5aab087794b7f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df221022ad368d565265b941120724997be9e01192eaa848190ffddf3cf21ea0"
    "en-US"
  end
  language "es" do
    sha256 "41566196ea2a290696f5e864fea20041ad4faff931d03bc31b9dc994b5b46d00"
    "es-ES"
  end
  language "fr" do
    sha256 "e7459fcbc99c42ae42e04deb236dd1ff1ef63263471763cca5fd4c067b752c6b"
    "fr"
  end
  language "it" do
    sha256 "95489cf921c73314a39d7ed5138e72275c199e90498fc8fc0af4e8e4d8bde58b"
    "it"
  end
  language "ja" do
    sha256 "688aefbb259a100551f81e55f38f6c6573343503a657130b44d9e6a2e7d8ef04"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "25f0137c9032c0240cb324dbd24129fc61e2152d7138c9da8af52bfd1d5f470b"
    "ko"
  end
  language "nl" do
    sha256 "dced16fa2016006026f88f17217ba65eb4e57c3502eb30371bac51d27557bf3a"
    "nl"
  end
  language "pt-BR" do
    sha256 "2c46d7ef6d98ba2e8478d5354394e0db5f477c7d9ba705a075881e916e5b699e"
    "pt-BR"
  end
  language "ru" do
    sha256 "01ef3149a1ab8992364573868ecd608bcdf47eb7df6a29679cc2e4e6a5d2f0ab"
    "ru"
  end
  language "uk" do
    sha256 "cbcbb76cb4829d3dc30d8b8cceb8bc51cd0214c7d7bd03cd21def56d2e06fcfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "7852c944673eeb0fd513768a6da9228564060884a16341657d4ca811365c0b50"
    "zh-TW"
  end
  language "zh" do
    sha256 "d837554932bf1ac72b51e02c3ee6607ab6af4494e90db4cc31df20eb1d00897b"
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
