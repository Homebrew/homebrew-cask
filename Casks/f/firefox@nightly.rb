cask "firefox@nightly" do
  version "139.0a1"

  language "ca" do
    sha256 "a48eb857b71724abf9c047c14f4a2e8275a22ce684ec9f11cec1494c52afa7dc"
    "ca"
  end
  language "cs" do
    sha256 "8e8f7eef49a010f55771cbe20961419bbe4356eec84024d725286f3245207605"
    "cs"
  end
  language "de" do
    sha256 "dda8b273ec0f39de6dda12d6d287048dd731799d938a9839f66ecfe53cd96868"
    "de"
  end
  language "en-CA" do
    sha256 "c2de152310cda7ad1abe6a4c01d4526dc8ad42cbbd7bd274416f2e5634878033"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b2e5f20d80100bcd4fa70098178ecb9e3b58d3e57aa389fd78b35a8a40fbf874"
    "en-GB"
  end
  language "en", default: true do
    sha256 "26c15708a7ff163b0690557602a53a6f5fb556e1f77351ab9db17799099d2119"
    "en-US"
  end
  language "es" do
    sha256 "812e6e7906814fc07c171dab934bdcd561cfed13610af3965dc5dd8655fb5be8"
    "es-ES"
  end
  language "fr" do
    sha256 "6ebf18babd80526eb41f14c671eb28169c13d31e7d69e4ad22e8f5a4108cae5c"
    "fr"
  end
  language "it" do
    sha256 "b1b37c2ee7d4e284308424cc5c7c28946587f46077320ce0b4a4557321389ae1"
    "it"
  end
  language "ja" do
    sha256 "ed6d8a103fc088c5cea71a5a349cb15766aa57fd5b7f58f19cc97e9307202544"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9ae741d24e255b85e9775413a6129229c03141495b5216e6c3dc0aaabf360efe"
    "ko"
  end
  language "nl" do
    sha256 "2d6a8825d4aacdb1cd8ab5f3bff44463004cf7a5b7c3c9a91206454b716c27de"
    "nl"
  end
  language "pt-BR" do
    sha256 "deddf498227bdc08375333bf9fe1857cef47051256094fe591727780032e4053"
    "pt-BR"
  end
  language "ru" do
    sha256 "02ae435f83f33ec1ad7388b704b18c3d313965fc2568f0a043941503f30f190b"
    "ru"
  end
  language "uk" do
    sha256 "9784508f3197c49f871d5571a13c83d00aca55d107de48b49081d14afafa7008"
    "uk"
  end
  language "zh-TW" do
    sha256 "c09010ed0336c9d808d44e4e493a79e8b968ea8d22cd5d4c9e694576d8228939"
    "zh-TW"
  end
  language "zh" do
    sha256 "7945c1b7dd2dfd6315d9625047302acff1817a9d8884694119c2319803a7ec2d"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-#{version}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_NIGHTLY"]
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
