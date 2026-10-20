cask "firefox@nightly" do
  version "160.0a1,2026-10-19-21-59-02"

  language "ca" do
    sha256 "b8d7ff68ea2cd1f825bcf8d80aaaf406b25989ee61fc4a0810931d25f2eb72e3"
    "ca"
  end
  language "cs" do
    sha256 "da8c762a2e4d03228e4e485cde09412d0f3bda7937929b09a250f1843d685ab3"
    "cs"
  end
  language "de" do
    sha256 "ea40acf39520030687cb592c19adab420ae71df9706e1de58c88237b68b69b04"
    "de"
  end
  language "en-CA" do
    sha256 "17df9ec05969810e4edddc107b59287444f2cbf7cd92e3925b2998a0ca937ef7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1511b58d657a938410859c13cb52d6ca42c05bebcde8786c3ef39b29b0af67c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9742d04ada75d99e45713e83395becca864509fc3324386e9184dbd69278f4b9"
    "en-US"
  end
  language "es" do
    sha256 "4b9b95a10aaa7a130e56c3be022a7f728268d6c0b9a8dcaaad42c98dde42b585"
    "es-ES"
  end
  language "fr" do
    sha256 "7db5843b285d3e2a15f301fc68e0d75f787f40bb46d19824a57798b214476bc4"
    "fr"
  end
  language "it" do
    sha256 "b455f629ed20bcc57d8764cff094b17b2492270c05444db622ca2a3a49755f37"
    "it"
  end
  language "ja" do
    sha256 "07b0c092b2720fda0b0da32b00abdc35f2908b85590c639086d05c0de556b1ea"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5090082cca1b8f9f5c8b927060cc4f3f337eba1b486ccc978301e99731a052d8"
    "ko"
  end
  language "nl" do
    sha256 "52629348f08cb3b57c30331f4194ccc11ee3e1231eac4ba5e4517efd16b13898"
    "nl"
  end
  language "pt-BR" do
    sha256 "ed3a805677d8ff7821d9043492d60451ff1ed353ae49b6606a1afbe5a6c8582c"
    "pt-BR"
  end
  language "ru" do
    sha256 "7aa6a6ee3c04ccd8e87d623032ffc0adb78517f4270f4ad30f9869ed6265a014"
    "ru"
  end
  language "uk" do
    sha256 "374640b5377484a06dd55b188db4dd7dd88a70c6301c43642b2a80a635652d66"
    "uk"
  end
  language "zh-TW" do
    sha256 "36332cb941ce15b520724caacb6153ada928c9610dd286140335fc1b9ff646e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e6403b6d0a4fc13e8602694c1d33949e962c5fbb40e81370b503082f02d71cd"
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
