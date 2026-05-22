cask "firefox@nightly" do
  version "153.0a1,2026-05-22-13-28-23"

  language "ca" do
    sha256 "46a779bc7b089b05104a049880f8a5dd989c799c4355928d89b37f3f8e154f3e"
    "ca"
  end
  language "cs" do
    sha256 "0972b786873fec399a2e0ee9da265edd3ff4e45608ec3d09956c9499da583c90"
    "cs"
  end
  language "de" do
    sha256 "b991eed45a887bd036359efbf03894dd4272fe055b61a447cfc174b493672dc5"
    "de"
  end
  language "en-CA" do
    sha256 "585d00bae4f14e1189f32e29b66e1df8c2eecaf1149a7c06f0583d0544ca590c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "24990a4918b170dd9e81471aab2d32bea2ee8b4ca133f0c97df3e482fec7323f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "918f1a46e6bdcd77e8e71a8f45a456decd3aa5fc99ef0de0d8302728cb14ce51"
    "en-US"
  end
  language "es" do
    sha256 "044af2e5752a8e0475d620bf1bf30b9bf2c6d784c56d028f99e3d47621bfecbf"
    "es-ES"
  end
  language "fr" do
    sha256 "62c8c7c1b13c5d682df4c915efc365edc4a25294da49856897e80608d5be0211"
    "fr"
  end
  language "it" do
    sha256 "7c167f7ae37a0fd80304df7e5fa9db6cb3c3adfcc446701ac0eafc582c75afa2"
    "it"
  end
  language "ja" do
    sha256 "f3b7e62652e054d6bcd9455a8c234fb7b481db2682aeffb92ad6665c95f52ad9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75fde97814c72af8b3cbcf1ec5077608713d84b2a87c0cb17cfb5ef13c0992ad"
    "ko"
  end
  language "nl" do
    sha256 "6661fafe5ebde38b3cb2023ed74c9970ad77152785d77a5cb21ef0c4b4820098"
    "nl"
  end
  language "pt-BR" do
    sha256 "806e31c9012f3df3c28ebf63209b4962f513f90ca4ccd2411e8371e89b9dfbcf"
    "pt-BR"
  end
  language "ru" do
    sha256 "26bb29373466b05fefa0c0363d93187e6cb76f6957720bb7f99d8cfd18637ed0"
    "ru"
  end
  language "uk" do
    sha256 "0bc80a26984e9bac3818437e1901d0a9371af42c739678c8b6bed0574e3bff22"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f20b812a1952561cd8af4a6809c68d08092fcaf6fd256ce4a190db402e709ae"
    "zh-TW"
  end
  language "zh" do
    sha256 "afc023f639d65fe0f50046ee7c69e2ef82ebbe66c3cb961dba6205940f1670eb"
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
