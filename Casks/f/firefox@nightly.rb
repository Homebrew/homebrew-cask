cask "firefox@nightly" do
  version "150.0a1,2026-03-23-00-18-04"

  language "ca" do
    sha256 "6f2414b6d1c56535a2185e6e3497f3fcb72bbb3d1a67268096a74dee0d3db2ff"
    "ca"
  end
  language "cs" do
    sha256 "b058101a7acf22be87cb4447396d1cdc7d215b36b83de5d759e2e84b6456fe16"
    "cs"
  end
  language "de" do
    sha256 "20453c4f0164213b63b1366a11fa2cb963672a1afc47c4add38d3aebfaf341ab"
    "de"
  end
  language "en-CA" do
    sha256 "233b62c6b85e6b6eb3c62ed6e35554d6c6e3229f17f3dedb215be2f93b080438"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1a9fb0cfdb136a6d6ecda377abc78d5d274883ab72fdbb2494570503898e8d30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7bcd8add5b351a0147e7871e9664f6a2a6234244dc7e6317bc73d945f9c06745"
    "en-US"
  end
  language "es" do
    sha256 "be1678a2c4fd0c207a4183da709eb53f6b794394beec57c577e22a72851b15d2"
    "es-ES"
  end
  language "fr" do
    sha256 "953de3444b08f807e80fb1c8b49ff23cf0faae8f7c9a23a3f5c0c075c14ff2d7"
    "fr"
  end
  language "it" do
    sha256 "44253175bb8bbe7b72de15efb8394e01b9224df80e8318ca6a715a492306bc68"
    "it"
  end
  language "ja" do
    sha256 "77f06eb246a803279053d5872726ea849c63555a6f9d8103fc5fb19685d7fb82"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3e882728498f639f6a723c2d9cda0eebe0ba4be98058bb00bb445c0e53699a43"
    "ko"
  end
  language "nl" do
    sha256 "602839e2aa94f282239f641ef84e8a459c2cb5dc261f89c73f3ff9a1d795d75f"
    "nl"
  end
  language "pt-BR" do
    sha256 "0c07080d47349b3d7c59f8137e08d3634d3e897fd12f3f012f1533f2a1316223"
    "pt-BR"
  end
  language "ru" do
    sha256 "67b0b727e5ffdffc150439e17624638d9d31db4d33ebcd1a679f33eb62a1ed07"
    "ru"
  end
  language "uk" do
    sha256 "b61e11aedaa8c6f7944ae09c8ffb6c654d493bec96113f5c632b045bad0f8b05"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f479fbe0bc8f88281dd32c26b3d3e882f07a54659a42cdbc82f2242e0351efd"
    "zh-TW"
  end
  language "zh" do
    sha256 "656e8ef59989f5e94a9a05a3946c4fac7107ee0c24839dde8aed93adbde74477"
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
