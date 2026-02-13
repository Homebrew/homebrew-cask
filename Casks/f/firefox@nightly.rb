cask "firefox@nightly" do
  version "149.0a1,2026-02-12-21-38-36"

  language "ca" do
    sha256 "6d1aa00e1cc5f5f7ea16f329fbeab394438a5408787346c81ec85382cff3d360"
    "ca"
  end
  language "cs" do
    sha256 "aadae243534d622f1717500bdeb36df8e1a24ed404891a8dc1789aee5b1dabe8"
    "cs"
  end
  language "de" do
    sha256 "cabcd3414f18988f2618fa4eb584d3202c29f8d6786dd94e9530db4243e59411"
    "de"
  end
  language "en-CA" do
    sha256 "826afb802ebd860ffddf7ae5a5e03bb9ca4cd9147a96620bbccf6cfa9022b19b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "29bf2eebe0b9e41af8a388940fcab852d24fcb966a0adb36d655b6de8bdbc14a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3b1d1e378892355e8de170dd352820ecb2afeb7f39e65d6260d3cbef5fcffc7"
    "en-US"
  end
  language "es" do
    sha256 "3d7f62b917eaea7c1fee0ce6d3d6d82b40cdde24f214105bf4c591851b083cc4"
    "es-ES"
  end
  language "fr" do
    sha256 "bfd4d50889364861e75dbbc669b0f35ece18f2fd29f456f774601af55bae1638"
    "fr"
  end
  language "it" do
    sha256 "e6b6dfe2e8423c979be9e00013caa8809ee34f6cc7abf74d2c18e4b549f3ea18"
    "it"
  end
  language "ja" do
    sha256 "9a8d016edfb01b0c60ea317464f7267653b187d8972bc2a216ab013602888867"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20675f194d6f0533fcb066d3f3d52ba72769f2f17e3d0937cc13c4f017350f8b"
    "ko"
  end
  language "nl" do
    sha256 "a5004990fc11a7de2567eef52338c39e183cddcfa5c8f61678ddef8086537b21"
    "nl"
  end
  language "pt-BR" do
    sha256 "c13415fde43846ad824c971bed2cffe59a2b4dc569df127c3c6a21f302ee6ca1"
    "pt-BR"
  end
  language "ru" do
    sha256 "a9442961586de3b5eb5f93d656de2676e286351017b6e13e08f1538193e5e484"
    "ru"
  end
  language "uk" do
    sha256 "219cff80b00df2df91383440c06a308a6ca008782ec3015a464cf094aff4a18b"
    "uk"
  end
  language "zh-TW" do
    sha256 "83b3b213ecfb32a1b9c0a7d100c26d152e7900451f8bc4a1be5d0d2e34c1bc39"
    "zh-TW"
  end
  language "zh" do
    sha256 "e568903f48a9274e47de5d43fe446e4760c228756a7a48970eb7ef8adebadb31"
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
