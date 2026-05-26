cask "firefox@nightly" do
  version "153.0a1,2026-05-26-08-58-00"

  language "ca" do
    sha256 "1389d508cfd3ac43dbcd5fa2d0db0f72509cac69cc1e803caeb4309dcc6a8d02"
    "ca"
  end
  language "cs" do
    sha256 "765a8fa02fc0918f12605ba3dbf7b448ea07bceb82c59d4ea59043514d96ef2a"
    "cs"
  end
  language "de" do
    sha256 "dba9d062601408f518997d74aac0fccafd062faf58a6f658eacbdd148babb328"
    "de"
  end
  language "en-CA" do
    sha256 "049d623330e1f865a3ec00d153627d45cd88ffd9641dea796513a9c402d1d746"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8c1061ef024323109fb4c48782405c15fe953f035ee8d75e8404adf0418db177"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0416077b18ddc3dfe8127bfa34cdfda7321ad2762926e9abe3a23b6fa2110e71"
    "en-US"
  end
  language "es" do
    sha256 "e2b6543e08803ff5918e5513ecbe42fe1b6f260ac52fc35d62addc048f3581ec"
    "es-ES"
  end
  language "fr" do
    sha256 "e4917966e66b5bebcebb1179d6dfacc7237c1f12259baf0906889324304d1e16"
    "fr"
  end
  language "it" do
    sha256 "2074c2f0581019b621a6f3f40b95a12b36ad27752b32571f397ad9bea031fc8d"
    "it"
  end
  language "ja" do
    sha256 "f541039fae3247f1bd2ab3b1ad24518b55c95bc88924979adfa8b7611c6b97b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "12c15501d99b0dd2c69a449f7fb1059df1760fda716b68a5833886d9444d508e"
    "ko"
  end
  language "nl" do
    sha256 "5a32275638d911f025eb283348f6e7ecaf565d8b47956ad2761746227739e489"
    "nl"
  end
  language "pt-BR" do
    sha256 "a1a3b758933a89a3f13fc41cba042f8fc91c488d15545935c317d54b90dda7f7"
    "pt-BR"
  end
  language "ru" do
    sha256 "29116e6fd39d4a98822d4275b293f62603b54e1a2a8f1f9898a5b77b7dce6761"
    "ru"
  end
  language "uk" do
    sha256 "a285feec762d1783de65056384b8448617d64c1eb53f1d9e1590d647c3539b43"
    "uk"
  end
  language "zh-TW" do
    sha256 "32226a3a5cf8c19ee3fbda0d1deab20d258090113b9f92e988308385b62f1a27"
    "zh-TW"
  end
  language "zh" do
    sha256 "ee9ad96f8e01209b21b6ba779f0eb9c26591f8b1e295ca5170f8c9372259b189"
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
