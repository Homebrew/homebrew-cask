cask "firefox@nightly" do
  version "149.0a1,2026-01-18-21-45-18"

  language "ca" do
    sha256 "ab3fa3ea8c7a0b0a663c18bcd58beebc01562efaf28e39eec41201d0c31997f1"
    "ca"
  end
  language "cs" do
    sha256 "a655a71dc38c74627f11dcc57d3e905e4c9f1bbabdc6a300ca97d881bf339e2a"
    "cs"
  end
  language "de" do
    sha256 "eec46f264ed7818243d3348679614664fb3c929296948e2eb606c29ac300ef2e"
    "de"
  end
  language "en-CA" do
    sha256 "53855f5812d6915ccd19ebd09dfb594ed2bb8c4a11e52c4c058624073ad45713"
    "en-CA"
  end
  language "en-GB" do
    sha256 "00140d03fbb31e0170391a50b672b1cc3a59c6a14d6bcae50b64a686b8dbd8e1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "95fda1cd03c9e72c5f1cdd009d78137afd59434cb6cb4c10691ba72c25e6d931"
    "en-US"
  end
  language "es" do
    sha256 "19f1918171098c440a132960bf0760927933753d77304cd43519ca4ff00a3e6e"
    "es-ES"
  end
  language "fr" do
    sha256 "89bc7d068875acc9e4c27c94d6f75b196ef4743b53e3c86e9b33762a379591c7"
    "fr"
  end
  language "it" do
    sha256 "fc309623efbdd41009a026a564879a15d2a363250de1aea2a0b6ea9fc50d042d"
    "it"
  end
  language "ja" do
    sha256 "47680141dfb6a5b7e65413de07db39e083021fd54260d04e03007227e13b4f1e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "04cea7afb6829c6b897c26f0e51f570e00fcd513d69cf8c29a83f6737e1d243c"
    "ko"
  end
  language "nl" do
    sha256 "4be0f8b0cf7bc2e75be52bede6716357f210262bf9fa885d3ba841a57029093c"
    "nl"
  end
  language "pt-BR" do
    sha256 "9e6d6b047f430daade9b205a8771ebdbaaa7263bf10ea110e05eac77bceceb8e"
    "pt-BR"
  end
  language "ru" do
    sha256 "c654564e7019228af1860e69a30899a81a00072ce36d139f3b4ed605bdc4b50d"
    "ru"
  end
  language "uk" do
    sha256 "6ef75220588d920ff02ecc5b489def0be7eb121371b2e05926a7b91ac854e6e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "f48fdbf177ae985fe8404b3ef9a8951969f8d0d7b8ee48ca1fd2e7cd1522a4b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "91e896e4b6e82925cf00a17df0111397facd5e70959b3c316397b3401490003a"
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
