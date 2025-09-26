cask "firefox@developer-edition" do
  version "144.0b6"

  language "ca" do
    sha256 "e02e9c0072a338473b6584246e0bffa20f9f47172d7b0c8a4bb12236dad4a652"
    "ca"
  end
  language "cs" do
    sha256 "ad1e6f840b4402201f5cb672cc24a2ae6031a7ccfdab3daf5d1e092f6a783972"
    "cs"
  end
  language "de" do
    sha256 "2241de7adc8888173ae10b88619f16dc9c7aa3f6cc0171e1c2799f8675fa00a4"
    "de"
  end
  language "en-CA" do
    sha256 "a248ea8e9bfa4115a740aa16135e087622e188c013c5e05b8c92d0e73b21cac3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3d8668457cd162a56c7ac650eb1f1cf801c18ed4f12889b2218f504f9cd44f36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80ec21ac7116837d10dcafffc7d24cc2fdcaf5c026a11dd262d57636af2345fc"
    "en-US"
  end
  language "es" do
    sha256 "a1d0b1175df57eadd579d996a31242a3c06c3e76a699b5c19500fb05457f808c"
    "es-ES"
  end
  language "fr" do
    sha256 "cac58fe8de6b431d77220b98f64f0429c9bc1de32c0b346560355d5e9f9e13ca"
    "fr"
  end
  language "it" do
    sha256 "bfee2cecc1d2cff0e091beb3b3b6e340350e2937541d9a7c9274587cb7e9edf1"
    "it"
  end
  language "ja" do
    sha256 "d3627400176b9199f6741664678b1337f1db3ad5a23df420ebf7f83015b41b80"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab10a7ec717cccd3b6612125c8b8917c5d7a9b45d4763de0d80002640a58bcdf"
    "ko"
  end
  language "nl" do
    sha256 "35b1b2dcf5706cc98c1515a7d61b3f4c72aec618c78e38384e813485d2817120"
    "nl"
  end
  language "pt-BR" do
    sha256 "b5206bff2576da539847aef8c0d5e2860420450e80921eec82f3feee6c951038"
    "pt-BR"
  end
  language "ru" do
    sha256 "2be638543c0d83e82cffb3173c302a5310471ed9a1d1a15466c799dcb678efcc"
    "ru"
  end
  language "uk" do
    sha256 "0747e993b99fb9ec1c5a611b3559894836b54dc962219c01b2a07d808e20c3a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed82f18f1debdef3c764287e2ba7286ab77a980b5c016f99044494f91aa8110a"
    "zh-TW"
  end
  language "zh" do
    sha256 "642d27ffc1510fc04becf07a1f7e6e634923f57bd92167b00b309836963c446d"
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
