cask "firefox@nightly" do
  version "155.0a1,2026-07-20-18-01-21"

  language "ca" do
    sha256 "9e410b460d05c1a821e7f8a2f6f80f0af9be22bc5663f1e3078732ff1ce4f39b"
    "ca"
  end
  language "cs" do
    sha256 "3a8bf78fef81d49ea7d20cc05c16d406e21b9c6d06f1aa031354a8d3ff5acf22"
    "cs"
  end
  language "de" do
    sha256 "35cdb191723a9590953d1301a045bf44044045fe1dde229e02521e5263614d03"
    "de"
  end
  language "en-CA" do
    sha256 "b661ef1883b6496afc9a724abf712132f9ffd59cd955d864643479b404907e2b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cb8143110a8ec3566cc38d083719a2f0a0b502d2cc44de03c9e29aeaeeaec985"
    "en-GB"
  end
  language "en", default: true do
    sha256 "474b81b961013e575a2c0ff8c275cb54040b343bcce9fda093b37c2291569500"
    "en-US"
  end
  language "es" do
    sha256 "6eb48b6cf029629a8e2e944af8085a7f842ba534ca5fa4c257df7001cdd6609b"
    "es-ES"
  end
  language "fr" do
    sha256 "65e79c27626602629b59438181ee21e1c9e27e89f865d6194f480a000cb5dd90"
    "fr"
  end
  language "it" do
    sha256 "06e6da0ce3ccd3d6baa2ae29fa4f60d777ee0936622f76d32148e6f1e6fc4005"
    "it"
  end
  language "ja" do
    sha256 "1d11b97d06702ec7f0f29da6872de6571747b4ec3dedb9d104a4d637e99ec8a2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1d153a284672f72ec71c2391b098a97f2c84a51fc78b45d2e61b66a4be598251"
    "ko"
  end
  language "nl" do
    sha256 "443fb29ef4cabe357469857d5df376ddc68cc1ddda69be95401f5acc1b7b6606"
    "nl"
  end
  language "pt-BR" do
    sha256 "7caf07746a1a9b7c024fc4663a6f0cd81348ab67e201a5cd6936e5990a805d8f"
    "pt-BR"
  end
  language "ru" do
    sha256 "5abdefe57de52315965dc612ca3bbb2f27f8af219ad33388e425ca45a0103de5"
    "ru"
  end
  language "uk" do
    sha256 "69d7b9114a22d9a9e973c250c997c7b5fb8c9a2461de60489d15460ecb4b6ac3"
    "uk"
  end
  language "zh-TW" do
    sha256 "b61619483fc88526226c4d8e35404891c59c0300195eca6a14be3efb014f7540"
    "zh-TW"
  end
  language "zh" do
    sha256 "657e7181a07566181983ed868a315253f1fbb9d30086f738b9173dcb3eb453a7"
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
