cask "firefox@developer-edition" do
  version "140.0b9"

  language "ca" do
    sha256 "99e2de9ca1ec91f4589b168dbfc266b9f9898d97212669702072b74fd4001bc8"
    "ca"
  end
  language "cs" do
    sha256 "de10595c5a6aa6c47f62d87366e7aad3ad7d855f0c84dff52e14ccd0ee2ef6cf"
    "cs"
  end
  language "de" do
    sha256 "415f9afee534eec8bf9365eeb31caf39a657876d4f0fe1556fee721246f40473"
    "de"
  end
  language "en-CA" do
    sha256 "332410ba11e1016d5a91491a05cdcd065105b48ba9792724b4ddad207979d317"
    "en-CA"
  end
  language "en-GB" do
    sha256 "382955d185ac4f8bd5954273040131bfa3b199d53c4aa901ef84f6755f1dea5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9685e29ad1f6926fbe68621b1a0fe72a0ef87862151b458696947589ec7db010"
    "en-US"
  end
  language "es" do
    sha256 "d927d84fcbd39d871dcf4d5723e5e95c57a7a3a269ff72302674d37852f11644"
    "es-ES"
  end
  language "fr" do
    sha256 "be48457efff7167d949f13cdf800f8aa55e142e9e73a1a70e031adc7d5d40651"
    "fr"
  end
  language "it" do
    sha256 "e67d725e19cc93197a43ee487da8994e7ef17a1f8052ec354251ca4bd34d627a"
    "it"
  end
  language "ja" do
    sha256 "3c10e258719772bc28ce4cfcfa557235187e2b7f3a8d05f357e5d13f4897e272"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9f616e10c6f88388c0bd4dacc852b989894bf054e2e22dbbd03b8d77a13c7b93"
    "ko"
  end
  language "nl" do
    sha256 "6c6258c7b956def6d480686684e7e208a53811ccc54512c8634ed6cb668c3472"
    "nl"
  end
  language "pt-BR" do
    sha256 "d16bb0a00d6c16dba4b56945583b1ae642943b4c38e26d332a31f8b8b332ee8e"
    "pt-BR"
  end
  language "ru" do
    sha256 "d722bc35f1955f9911f1704694d21f7117bc8c3d09b56dad89186141a9e7b40e"
    "ru"
  end
  language "uk" do
    sha256 "0afbb61dcd086f6f98779374be27bb894d390eefed5cbe38fafbd5032df50165"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec1a0e9951dac96d55fc3edffd55efb844159e56a35169b923d50503b35e705e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6bcf86b933949f205245024eb0b872cf6c5022e22145ef05193cb4ba7d69c59"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
