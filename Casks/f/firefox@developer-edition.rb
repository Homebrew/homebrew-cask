cask "firefox@developer-edition" do
  version "129.0b3"

  language "ca" do
    sha256 "79c69287c8df8967115de6609843037212c8a2c6dc497e7e79707012ae72f9d0"
    "ca"
  end
  language "cs" do
    sha256 "3a39724c555a64982cf4328e349eef2a97fa964b7477280268c18a5a4d1757aa"
    "cs"
  end
  language "de" do
    sha256 "c43231fe204822c0d646b4364c9b6d2b7ac70d93b61fd6ccaca847d983f4f389"
    "de"
  end
  language "en-CA" do
    sha256 "c84299e9847090c69369dbc19930562577c7023585d3dddee573934004d58efc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "797d4cd4468d4a7457e3ef812973d0f40418dedd013af8d0995d5035c14aae7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b76308ac080cc0d3cad6c0d81ef09fb588581d40acadd520d6ca8c8c36c0e52"
    "en-US"
  end
  language "es" do
    sha256 "1fcc11b46014632ddb12810f8a29e4a9e72ef296d999453ce93a1ffe77410af6"
    "es-ES"
  end
  language "fr" do
    sha256 "3f4174479f3c5ce8ba70c7e1aed8b308d260fabff93d7c3895c59af2730522ab"
    "fr"
  end
  language "it" do
    sha256 "e17b76a1879acfcf36f9af06c1d779136eb3ffc1406828e9974b28ef0966ca94"
    "it"
  end
  language "nl" do
    sha256 "47af56594e23d6ac258049bdd69bef4e38e96c38b1b2ddb22fc7e4675ac4303a"
    "nl"
  end
  language "ja" do
    sha256 "ff58c86d4e0f8bb6038834a4210aefc86f3363560cb55f46ceb206b36448e936"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "7b30f5fbc0498bfc7edcd5c5dad296606019f265d865b5bc136d88faa5587687"
    "pt-BR"
  end
  language "ko" do
    sha256 "7f1feeef08ab35b8ad2ba7a42fc7696f32271fb245902844f46a206530ad4992"
    "ko"
  end
  language "ru" do
    sha256 "bffc5ad921fcda6bcf5c38d88f2157525459db850155899d603d1839cb4daac0"
    "ru"
  end
  language "uk" do
    sha256 "222bb928072210af75bbdfdeba4a637120e8ec2e241051e89d7f6f36a42d11cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "bea26984f4cd46063a3802e0787467e00df90df7bb33c0659271685dfad91579"
    "zh-TW"
  end
  language "zh" do
    sha256 "b147b04d88e0fb23085f6bf1ad192d8434dce974db3f4f80e247a75168a56d3a"
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
