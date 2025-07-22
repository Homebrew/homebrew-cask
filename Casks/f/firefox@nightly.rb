cask "firefox@nightly" do
  version "143.0a1,2025-07-22-09-34-26"

  language "ca" do
    sha256 "4bb42ba25c3003856d71e16880ad39304df086a61416c672b5a9b1fc61e01904"
    "ca"
  end
  language "cs" do
    sha256 "eedfada8cab617e5ec234ff8287b6d425726825033ded4c7c04700b4d2bb622f"
    "cs"
  end
  language "de" do
    sha256 "f7ed90fe06f78f1164bfb2f9e19429175f02ff7a63e758146b25d4722b5243e5"
    "de"
  end
  language "en-CA" do
    sha256 "4b015aa554a3695f9168efb2afbda6d65f83c8acea463b4852582c39dbe55f21"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6a6769234a5c6b1f28862622eadf4daa268e050f8dc29d50e5e95f9a848f36cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "acd7d08438ddaec7ec2c11d8e50aa93dfaf50f6daa578a0bfa3c896fffa583a6"
    "en-US"
  end
  language "es" do
    sha256 "d2ae33f4703b435cad4dcb1da93c66bae0898908f6e9d5099aed4aa60a110226"
    "es-ES"
  end
  language "fr" do
    sha256 "ff4001814bc9e404f06501de491bd484facca7bed26040ef0c6d7cef5dedebf7"
    "fr"
  end
  language "it" do
    sha256 "d114508b45f15696f458e7c5b801961c7a94cb12046fbc371a13de49aeb1a098"
    "it"
  end
  language "ja" do
    sha256 "e17b8f07116b0294fa80ab6ad15d4206767aec488442ad3802887ecfeedb1ac6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "385efde0dacf213071555763b868a65a7b6a3795e5c4d1c04a38e30b5da62005"
    "ko"
  end
  language "nl" do
    sha256 "9f91156071242ff98c2ca610d9674a82d9a1dc5bdc465d08e5f62bca75f7174a"
    "nl"
  end
  language "pt-BR" do
    sha256 "ed1538f23d800858d0871e3ba25bbe5f2393d550eb5913e84fef82626bf80457"
    "pt-BR"
  end
  language "ru" do
    sha256 "98d58ab1488bbcee8164b941a2ced767a3b137a8c3dc78a8b7fb779fa92dc746"
    "ru"
  end
  language "uk" do
    sha256 "12acfd561d4d722c934844a298ffeec56228b79d472cca3dcf6ba2c9685069e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "ca3484d2afd16ef03552f7b3d7425329f570b54e5ddd25107840b7e216b5ed94"
    "zh-TW"
  end
  language "zh" do
    sha256 "a502e3eb10fe140b5fa95036b712a57ae1669c806b2ca5c3d44ad86f8a583a7b"
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
