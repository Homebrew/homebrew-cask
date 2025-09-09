cask "firefox@nightly" do
  version "144.0a1,2025-09-09-09-22-17"

  language "ca" do
    sha256 "54cdbc6f727ed671bbcb22d7b25adac0b6875a803b265a89cedeccc418fc5052"
    "ca"
  end
  language "cs" do
    sha256 "6a92b77ca868c82abedd593d5a7b10d6d40fd88bda34019f791558821ea2a7d9"
    "cs"
  end
  language "de" do
    sha256 "f66ab9abf9157ce05a799d1a25cfdb6e84d99bc4c920a54cbc97b1649f2135c5"
    "de"
  end
  language "en-CA" do
    sha256 "8eaf37e8bd43ffcf7dd0fc6c0f51bdb2636a1f2034dcbab43ac3b2e02106ea04"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61c0b6d47696b5b7b44a3a142ad534996499ffc03c42b32ec2cf27cd7e2ee943"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13197798f13788dd53f99abb6852848df98d4d5ba1fa670c21641a5ad2283941"
    "en-US"
  end
  language "es" do
    sha256 "44a1c9f73828118700f44c644f6b0cb83a9ff672ed3a9c81d7619f2cec660294"
    "es-ES"
  end
  language "fr" do
    sha256 "e6c0380924187b4ebdc65d31e9980682ca1eee364a99ca4da1969ab821c6e4d6"
    "fr"
  end
  language "it" do
    sha256 "8bb46d54d62febcf70a2e9ea114848e9aed34d6e7589f75c786813831222d97c"
    "it"
  end
  language "ja" do
    sha256 "3fc2b7fbdb5b26909303d762169ab30bd5c70d390aef7d8e9865464095ce3dda"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2eb0c57bf347ec64728fdeeb48648cb2988b3d857fa052e6dc4d5b77304ce658"
    "ko"
  end
  language "nl" do
    sha256 "c4e726367f9e156c36ae0e25ccd3430a6aaf9b49d7457b57be6a66c091828322"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2800c9b9920f817f1331495b966532b4208ac9cf0974d55ba465f7c65f174a2"
    "pt-BR"
  end
  language "ru" do
    sha256 "df9a2c1340259805b02ef7253c459de472fcc20f37a197643e145f778a313b20"
    "ru"
  end
  language "uk" do
    sha256 "8f2219961c7bd5e7185d26417aca1673aec0f4079828cb584f9dd715be533787"
    "uk"
  end
  language "zh-TW" do
    sha256 "54cf182f894f2ee37694f8032e1e2f6df6d9cbd9ed68227da8fec857f7095ce9"
    "zh-TW"
  end
  language "zh" do
    sha256 "63af8d8bace191d2198042846590508c03200940766cc885dba14a21c4f3f1b5"
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
