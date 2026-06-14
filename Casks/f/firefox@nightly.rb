cask "firefox@nightly" do
  version "153.0a1,2026-06-13-20-58-37"

  language "ca" do
    sha256 "2b38ead8fdeb4804fd1faacb7e5a7ded1e67521a1575a3ae91cbcf80a6a11c97"
    "ca"
  end
  language "cs" do
    sha256 "6e1ce2c2f456559f47d211b7ed9076c6ae0bfd0ec2aad1fff43e598658184852"
    "cs"
  end
  language "de" do
    sha256 "615ff91df5fa316d9acf033c571ca6ea8d6dffd5a82b300523dda7b799188111"
    "de"
  end
  language "en-CA" do
    sha256 "5fd0ee8c6649bd7e6affa55dc834147596099e7cec124c500b6dcfb68b9baedc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ad11dab9ec8058f9a3270b8b2f8ae9ed4eddf6ee5bb73ff9999fe266fd11f0c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c4933db7789c211496be867187fc5481a2d87e5d2fc57d0a3431c19a86754a7"
    "en-US"
  end
  language "es" do
    sha256 "b9c676b22b1eec7c910276092e821c1a2687138ebad496feeb8151cfc2e81a7c"
    "es-ES"
  end
  language "fr" do
    sha256 "32026f9cdf5204f6e6c7c3cd8c46b7550b239099aa51f4c92cc674230ef47625"
    "fr"
  end
  language "it" do
    sha256 "f2df6ebe0b412cb259a05b4b39295e739211633f5cba39a2e8822af857d4a4d3"
    "it"
  end
  language "ja" do
    sha256 "2567f17fa378f3a2edc377f171dfd607467fa309eb30067bb43b2fb770842a19"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75601156c5e53880c7d2be0b0e073199e69561b182e065001cb39ef83633db75"
    "ko"
  end
  language "nl" do
    sha256 "ea8f9ee5223118f76cfda9fc4354a075330af2d1e667cfc96be23bb6a397ff22"
    "nl"
  end
  language "pt-BR" do
    sha256 "65a604b9265d1283d0fdc24fecce81b4db98bc054e459dedd2f0f25ad54fdcd7"
    "pt-BR"
  end
  language "ru" do
    sha256 "beee9217fa628e45c5ea453c87cbc0233b8a7b1404250434f4e21c61479ea606"
    "ru"
  end
  language "uk" do
    sha256 "5258186709955f37b2e31cfc9b5093e24283822de0198dc30232d6dab6630233"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f147efe4b0df6f7264edb581b45737fa58a599117689857706e5b4da86a37e6"
    "zh-TW"
  end
  language "zh" do
    sha256 "6944d54a33f1b67fee0b085c0d9dfb97630edff4c46c79373613a2ab5ec80779"
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
