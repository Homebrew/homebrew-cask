cask "firefox@nightly" do
  version "153.0a1,2026-05-28-09-04-16"

  language "ca" do
    sha256 "38294deac89ec61619e4729ba95fed1d4033f93c352e7060485a8a4bffb26549"
    "ca"
  end
  language "cs" do
    sha256 "7dc3ab5a9aaa3b99106131f5fb01303c3db5e6babc768d48dde853bc9a8f3f2a"
    "cs"
  end
  language "de" do
    sha256 "e8522f5fe097934bae2ddb939dfe96e8d13d083358059733df633dfb4942effe"
    "de"
  end
  language "en-CA" do
    sha256 "28eeeeb54e67a7830543f6358c173cab38268655960a19c859d5a4bb41efe7e5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7276debf55885594ee4d3003c6568cc2cdfa58409045c6757b13d64a6688211d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29663199f9ae52e24d22d8c7bc53cc6e2c9cf9c5f20d6393645220b7e3c19077"
    "en-US"
  end
  language "es" do
    sha256 "a70b06dec1de0c54bd0867c108019a7bda1ca0e64bd2eb1b1e85987e3afaf9f5"
    "es-ES"
  end
  language "fr" do
    sha256 "e5934877ef96133db38c6fdbbcc61005642eb5548d97bd3a4def2e6ee64fd578"
    "fr"
  end
  language "it" do
    sha256 "cc5f28e5a58a125d16efecd623440545e76a99417e413b2859a0ba42e789f7f9"
    "it"
  end
  language "ja" do
    sha256 "63c7b6dc4256d5ff4a7e080f9545c7a6ea6b5ade4b1a54119f29b0b1d416b725"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "540a83f935cbb16c87256d7f457a1ba2d0b3a863e546efe3fac9aeb5dbd28d89"
    "ko"
  end
  language "nl" do
    sha256 "5db89698fe1db687fecb1897d8ba452c7c6e35d5a443eeda6956c8cea66c0df1"
    "nl"
  end
  language "pt-BR" do
    sha256 "5b4c782e3551cd99505a0110c7ccea5c0ef36d3f1ce21071391bd2c17c3c21e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "fdd5fca3d3adce1444b8c68dc61a78dc36dd30bd7cc9a0297001dff2e07c2f94"
    "ru"
  end
  language "uk" do
    sha256 "3ae7c8cd8ab12fd9a2aeb3cdff1c814f3629d5fe500a965910df2340200ee97f"
    "uk"
  end
  language "zh-TW" do
    sha256 "75466807c32cadc3460e6adbe5312ac2fc504025e6d29ff7210602cf03ed9b3c"
    "zh-TW"
  end
  language "zh" do
    sha256 "31974dbdab3e02f51a5c79eb996ae035d32ce0452b92d9fe414b2d79a84222e2"
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
