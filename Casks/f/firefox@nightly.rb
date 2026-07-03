cask "firefox@nightly" do
  version "154.0a1,2026-07-03-09-23-09"

  language "ca" do
    sha256 "947339c1aea84706add85d2088ea14f2542b424197171c3b680a50a1149a12fe"
    "ca"
  end
  language "cs" do
    sha256 "38138e3f6e5c81ef3324148f4183cf66c19b7387af23ee9a64374ff5bd4103c2"
    "cs"
  end
  language "de" do
    sha256 "c5e3e47411cdc5ac98eef061031d3dfc378d11232c1507200418a238903f6bdb"
    "de"
  end
  language "en-CA" do
    sha256 "e92ac867b5d37778064686841860f29ebd7897e612750e75a1ad91b35cd00c72"
    "en-CA"
  end
  language "en-GB" do
    sha256 "70ca510a77a61f440ca2bef151d95f3c571bea7b7a1f46cbded8977800943d11"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b79261123b00386a86b643e5ec006ead1273b8da783a4d54532e227d3ca1a7ea"
    "en-US"
  end
  language "es" do
    sha256 "07a5363402c2dcdb3ba2751d697f3014bf271e8fba47d82e2a103fde5e00996c"
    "es-ES"
  end
  language "fr" do
    sha256 "ac51b525914756673387379cdeae06d9198c6098bd02a4962a1a35337fc06696"
    "fr"
  end
  language "it" do
    sha256 "523e10ba7d071248713289cb65a593706e071c779fb31ae61593d1d52834fac8"
    "it"
  end
  language "ja" do
    sha256 "58a8c6dee667b8c560d92913557fcc84b0eec1eeffd01906ed39a6889291d9ef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "584022c65bc5b0489daf3467e61ac7e0b145526ba7565d3212f8a0d8cc87b5b1"
    "ko"
  end
  language "nl" do
    sha256 "b2d3aa4572f729217fd1cd40c0a3833e51b3283adab5d981100eccada0505e4b"
    "nl"
  end
  language "pt-BR" do
    sha256 "944679f25a433462bcb349caa1af43d10905b9885169eee7e2c20a8279b129c3"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d5709f5f94a6fdbe7104eb03afeb3d0eb32e15bc20ad1e060e918efb9410fdf"
    "ru"
  end
  language "uk" do
    sha256 "c8a3e0ced91f085602583d4e6ed09ee6214737a65254fff4426bb203aee447c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "c4a7c42c61409016c1ff229466623e4dada3de59ac6b68b8cef68607944849cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "71cb5c81646043980cf912aa4fb9bb3b15a7ca9c54dc70e11012e6104813e054"
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
