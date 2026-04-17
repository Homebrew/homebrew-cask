cask "firefox@nightly" do
  version "151.0a1,2026-04-17-09-43-22"

  language "ca" do
    sha256 "b920ed9c115e8d9b04e013fe1009f1c10260de377b495a411f682f0938d7ea4e"
    "ca"
  end
  language "cs" do
    sha256 "fd97de4477e581e07fc9701b4ec8fd90d23a6a644c075310beb6c5cd486b6e38"
    "cs"
  end
  language "de" do
    sha256 "4683a4978a0f32670e65ce8a51885cc72fcb8190726a871122d59ace011f63e5"
    "de"
  end
  language "en-CA" do
    sha256 "9c66722fe54a01a60313eae8ceba14686fcd062528c0bd604b619c655956db06"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cf7200f34edc1e90973231704a3c4cb5e682e23498ed4bf74363db8f017facb6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ee1a8cff98ab70438bc01d624ca0b413a7d2b5bff79b4923a3645535ab24ffb"
    "en-US"
  end
  language "es" do
    sha256 "f890f7914328896a86744bcc5207b22596d3c8d01b0c521c3340f470c2e73254"
    "es-ES"
  end
  language "fr" do
    sha256 "35c362135bc8cee5ad124addddb20cda02e0abcea19992e7478dba6cc3fd5254"
    "fr"
  end
  language "it" do
    sha256 "cc7e9b8775c51391a99734208539eff44bdbd375e4736febd39b67b01944fe48"
    "it"
  end
  language "ja" do
    sha256 "e5a71125480339065ed6c47477725f673b6515938de07880e1e21943892dbfc4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3fba8e3daca937c0abf994f82e6eefc1ae55670c17eb74f59ae2a6d38b061938"
    "ko"
  end
  language "nl" do
    sha256 "9581095cea7a373608a06c0ee14da91622b168bbae09a1b4253563c8d52120a6"
    "nl"
  end
  language "pt-BR" do
    sha256 "508b3f70e6411d829a521326b11b45a2d12dff749d9a4dc371f8d28709c34276"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc0670614ad4c488d4b03b7608316ddf4c5412978f6bc07c3d624e72d95ef8ed"
    "ru"
  end
  language "uk" do
    sha256 "08ee0cc5b5b75b025b66133c4820980f140d27eff9ee1896a5f48f609b3464e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a5a84c6e31a5b64245da7b8cf8434b90c18289b49246ec053c7e9803b203e15"
    "zh-TW"
  end
  language "zh" do
    sha256 "6339e4b7006b40d713a87c540554d4df1fcf6128879dcfa74292ef1cca04ce3e"
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
