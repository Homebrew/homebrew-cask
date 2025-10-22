cask "firefox@nightly" do
  version "146.0a1,2025-10-21-20-24-05"

  language "ca" do
    sha256 "e286f0b8761ad117d89dfd13a7b51613d33f52d4527f8b8caffd5a9fbb2e7222"
    "ca"
  end
  language "cs" do
    sha256 "39e39f518889b5a5c48baeb8181bff3c6024c25ecb17ab0b95273943ff3cca25"
    "cs"
  end
  language "de" do
    sha256 "a5eb9c3ef33943c3580d69886fe0b1c6bf87f07661e7aea8fd723c6110eba644"
    "de"
  end
  language "en-CA" do
    sha256 "2e6604de01177621dd17f9915f7a6514ebf0c08e11f6216f19d429001399f485"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1406e37fd158660f04d4baf93d805ae55ea3a99fee6964fd43771dfe743935ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4fb14338315bbbe8d7753a4e4015fea06a372358cb3b62587e51e83f6902a360"
    "en-US"
  end
  language "es" do
    sha256 "575d30ec822bc391cf99c77b11b86c99b37259fef6fcf717aa75cb25bcf6adf9"
    "es-ES"
  end
  language "fr" do
    sha256 "0b1a6cbdb3c8d060aa5018306cd12d140b54fcb11b32337094e51d47f16ad38c"
    "fr"
  end
  language "it" do
    sha256 "589a1e51b2ae34290ad5fabd4ddbe6c29b1255d87e57c9a697c8b9a8a419042a"
    "it"
  end
  language "ja" do
    sha256 "9072341156cbb515cbdd82963e1f5364690dfcc455bd8613a3eec354a4d61626"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6af61ab53486d15a793e0a34d1cf3abfae6100877f123aa3562b6d45f103338f"
    "ko"
  end
  language "nl" do
    sha256 "f8a5a557fd344be5f1bd5e70398fef3f0006026007a2790546be80dfc0d4c331"
    "nl"
  end
  language "pt-BR" do
    sha256 "90cb2e7b3afba4288512be81bfc752ea87c08c10a5a34491b04017c01acf6344"
    "pt-BR"
  end
  language "ru" do
    sha256 "e4141f1e5c99b98e44cace0ec40e588d3231321eb281891d2c16afe913cf77bc"
    "ru"
  end
  language "uk" do
    sha256 "19c19578326ac184a8f0571ba87daf85e01331ea9af7d28b4906a72fa8c99d99"
    "uk"
  end
  language "zh-TW" do
    sha256 "8215b0dfaffdd48d2c054f038313b8531a3a12a99314d38763d31732b488f8e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "53c8572be61599773982e29d9de96cc844a328a4b48c52d95f639b1716aa7df6"
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
