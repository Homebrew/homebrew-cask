cask "firefox@nightly" do
  version "147.0a1,2025-12-04-16-21-26"

  language "ca" do
    sha256 "06eb19bbed7ce6afdc8ea8d3eecf1342a3e7fe76b6594f05854d3a8398e91f81"
    "ca"
  end
  language "cs" do
    sha256 "ba845503f7f13ed0621828435e344a68bd27bbedc3e8b044942072b9278ef130"
    "cs"
  end
  language "de" do
    sha256 "de9a74fd1a72a410a43a9b7a829df6edcb292cbd7a2f1ef28f4db621ab62db6e"
    "de"
  end
  language "en-CA" do
    sha256 "85dfb7e1e7e622a6fac23679ee1f31e80d711b21ce02621794ec1598a96dfb1a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "36ca07a234234b618521c3d2ae2d28c7daa37f9c6d28dfde8e820ce63c819c5a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "59274f62014e9dcd19c6f895ff2ca934de817db4bc28f05ae08e4c1abc441c43"
    "en-US"
  end
  language "es" do
    sha256 "f536d5af6850c1afd105d08db597a3ba4813159778415509a2e440e6f85b27ce"
    "es-ES"
  end
  language "fr" do
    sha256 "185a8fbc31ea23537f8c680af00eff1d331f6861f580398a580884152d2401ac"
    "fr"
  end
  language "it" do
    sha256 "99999032140ec0ef35c418d1a3c41eabc2f2cbded99f420e7b80d5f34132a6a3"
    "it"
  end
  language "ja" do
    sha256 "d887df6e9862255f449cce5b827f01b1dd328ab921555ba75a5d32b2b0391ce3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e6e6bc410b5167ef258868815a4eb54ecdb5c1b28df094dd3d06376af35acbf1"
    "ko"
  end
  language "nl" do
    sha256 "a0f7ac49ad54d00a29c9d769004a5b51a7cbaaccd39f9efe22f8e054bc685465"
    "nl"
  end
  language "pt-BR" do
    sha256 "314fbd5f635a94438a875a4c6fc60b97438d8ab5816391ab4c96437fe0b59fd1"
    "pt-BR"
  end
  language "ru" do
    sha256 "38a463f0cec789198d94765eb6c6cc043f702bedb520a02efc3e1b499935dc30"
    "ru"
  end
  language "uk" do
    sha256 "ca9a6895ebcc7014fdc92e440a349309210c8b4e22117e307ee45aa98a5f58ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "4433831c4dad8b495ec43fe69bdfad3c8d84f3dcc65c7dada9a97a6a025c4ef9"
    "zh-TW"
  end
  language "zh" do
    sha256 "743468153524c8c9d4e041705539c78050675de311ab04713951965017a51a8f"
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
