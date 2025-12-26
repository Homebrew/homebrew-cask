cask "firefox@nightly" do
  version "148.0a1,2025-12-26-08-16-18"

  language "ca" do
    sha256 "191ba001f7502ccaeb0a0726ea118b4d9618a3c991633bf31f695bf166d40b3f"
    "ca"
  end
  language "cs" do
    sha256 "0a8fc18cf0a46a89350e0ca8da8e83e0e5260ef02609cba21fcf74eab11d3d19"
    "cs"
  end
  language "de" do
    sha256 "42e2fbe3e11e253846b1119af00e008f01396e1f7f8ef92c2ccf032a14bb4b72"
    "de"
  end
  language "en-CA" do
    sha256 "0d0df1ba1b5b03eccbdbef15dec7832cb57e1d22dd98776fdabfc9170d74e33a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b38a5890cd317ad1a8ed62f7ff84d9e3d6fb075e310f7c904028c43273936d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2564b0dd332369119ff0399a5c7f20c3e6bbf1a969ceaa55576920158d041384"
    "en-US"
  end
  language "es" do
    sha256 "391ca3fcf7a2c0e488ef8490db992e77588f0e089dc87bfec1c5e840ae664071"
    "es-ES"
  end
  language "fr" do
    sha256 "5e3c32d4d8baefeae99a5ef3fa07bbd1f18733a3c26bf403c676f9ca855798ca"
    "fr"
  end
  language "it" do
    sha256 "4b28dfa7d8cc689e60da337cec136c91facee5136e1f137e69197047af39ad54"
    "it"
  end
  language "ja" do
    sha256 "7b5cb60b4b433d1f862c366e6cd9864cdb54e230322dce69e00942244a4a1528"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "31f1e833f22020f4274cdf3926977757935d40b02660114f9f86f45f623e69ee"
    "ko"
  end
  language "nl" do
    sha256 "d8943d6aa32858905db43e4d7b45c8d3b03ca392fb789f5feb779c3d56048ae7"
    "nl"
  end
  language "pt-BR" do
    sha256 "5814fee53162f455850270bacec6e9ad36e83af050433202d03c8e6c6aa304f8"
    "pt-BR"
  end
  language "ru" do
    sha256 "f66738766ef8e828e375e0bbc387d2238564f6cda4a99990cb2ef9de6e69cb94"
    "ru"
  end
  language "uk" do
    sha256 "fd2beadd8f7982811a64c07671dc6990187d045bf3d6c224bd41bd809899b431"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b6b8decbf273350d9ee6633980dd98f529ee9559419ceed99467c0a36aa8a84"
    "zh-TW"
  end
  language "zh" do
    sha256 "3103be88b016b06c5defd7839bdfe81bd065186503d8f5d24be0476affab8a5a"
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
