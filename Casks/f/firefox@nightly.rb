cask "firefox@nightly" do
  version "140.0a1,2025-05-09-21-12-22"

  language "ca" do
    sha256 "c01518a5527a0baad4a8b0e12664452e73c563c6c6153d2b4d1874ceff604915"
    "ca"
  end
  language "cs" do
    sha256 "622bda0122ee786d96661b71ba00cea9f51b0381814adbfba83fc4b649b752d9"
    "cs"
  end
  language "de" do
    sha256 "8a690b2bdde481f5ba2553f84f5bd05779724faac589103e8c98b1db1142a3ae"
    "de"
  end
  language "en-CA" do
    sha256 "f8e87678582aef45ad275886ee52140bfeb65c2267e36824fff3eb95fcc03a63"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ce6af50b8282586f008242191fb25c7668e2673fde32cca93a5e7b8adc3118a7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f70e1c0b6b1258ec6b72bed0234cc24265e70a5ce6ca798e46f073f540296307"
    "en-US"
  end
  language "es" do
    sha256 "85e9a74d153f2f73594688a1e0558bc3f27a1e2ada8b8e1a4a818a54ddcf7192"
    "es-ES"
  end
  language "fr" do
    sha256 "83c38807df33f3f8da953ccad1894651857d59e8ef61e6351fac5a8ecb98d830"
    "fr"
  end
  language "it" do
    sha256 "8d265e6226f4ee9813fb7a1eb43b244ab561418dcffef582b2b6a8b7023b0716"
    "it"
  end
  language "ja" do
    sha256 "97800bdb2a17ec44eb4bbe31487289d902722144e8843c3c9ef69da7b43fe179"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b901ba14181f2f31b8d1fabd971e524d619a93be795d4497cb96034b376256a0"
    "ko"
  end
  language "nl" do
    sha256 "0dfa05f63c1f0e8d6cd37bb1d65acac1f0c75c2e99fbe91609111d9bebc2f3c2"
    "nl"
  end
  language "pt-BR" do
    sha256 "3b28ea526c9ee08f2dcee4c8b3a2a283f6904295a86afa5e20ed3ee9612eced1"
    "pt-BR"
  end
  language "ru" do
    sha256 "191078d959340d8d13a77ae801a453cd50f3ab1ae57c0b279f0c41036ad92ed8"
    "ru"
  end
  language "uk" do
    sha256 "ab819d10606c400e59cf0d25f98c2a800e6483ddf7f931210755c53e085ecccd"
    "uk"
  end
  language "zh-TW" do
    sha256 "303e96fbc194208d5dd4821058048c42528cbefa7fc232c935906ccc51253fac"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc93bc17393669a13a469d095ca257c017c33fe2ef8ab02c31c01f6fb76eb0aa"
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
