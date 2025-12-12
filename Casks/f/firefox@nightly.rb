cask "firefox@nightly" do
  version "148.0a1,2025-12-12-09-17-29"

  language "ca" do
    sha256 "7426c396f4c79907a69f14b3922e147ebe78bac2e1ade9e722d529f32ce280b3"
    "ca"
  end
  language "cs" do
    sha256 "fb21e91c411ff990427b7597c5da1959d2f842107a10a507b45c66d340413118"
    "cs"
  end
  language "de" do
    sha256 "ad9bb43c00beb765fdc2adc7d74367810178542c1121f9601440724e2373c12b"
    "de"
  end
  language "en-CA" do
    sha256 "385ec0ee481c6e69f5b5afbe08b1356c96040f633c9f7c0f85251f25ffc2e123"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4da9c928a1534d935a3d3c66cd70c2f12a6cb6515e6c0d0dd62d0d55ba395c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "437f5e0b8ac30e9856776f1c8bbfbb52bc0633bc9ee732527c49d5c19d9f1331"
    "en-US"
  end
  language "es" do
    sha256 "8e2baf00eb67c249f2fdd2346b550a47ae50f5d2daa359e7601cd265afb9e543"
    "es-ES"
  end
  language "fr" do
    sha256 "1bd66ffee165fdb224d33f0dfcc248647c0805d70e748ae8f46f13c59062d37f"
    "fr"
  end
  language "it" do
    sha256 "48ef81d4c01f73e66e4992c2c4866cf505f5e5877479553e43126a9686cfb45e"
    "it"
  end
  language "ja" do
    sha256 "ef51b45b97b52f22de3589cc031afb001ba3488d7f913453e5a519e466b9b6ff"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "169adce96b2cee0d00fa5dc8698d45ea02f04f6a43db3499dbea0aef797482c7"
    "ko"
  end
  language "nl" do
    sha256 "e8d4340f303e1afcf7bca2bb9782624165eaaa556e0346d7d1dd2439e334930f"
    "nl"
  end
  language "pt-BR" do
    sha256 "f59438df4be1c4ddda512bd476c9423dd3502f74453d3961c4cf5b17fe724bb5"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e13b11b67a1444017547fd97a19a94bc19dde06fa36d8adb1785d36c130b013"
    "ru"
  end
  language "uk" do
    sha256 "486805dbfa6b5573d4d0bc7442611e3022fa6fd4a6383fc1552d49c774f7ba0b"
    "uk"
  end
  language "zh-TW" do
    sha256 "34b67240e3d860647505572ad152342e0f7a96c846e0a96b458e5e92572963d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b68443d27e3990dcbe96426a5d075d5eaa738e226171e11fc65ee42258f95d8"
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
