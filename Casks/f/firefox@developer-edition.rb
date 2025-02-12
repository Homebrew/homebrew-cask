cask "firefox@developer-edition" do
  version "136.0b5"

  language "ca" do
    sha256 "65e5eb5713d84054ac1874ca5f2747f9a004bab044c0850a76c215f8857db065"
    "ca"
  end
  language "cs" do
    sha256 "94e75a32178540fd4a9bde3d78c69fba2fafe0f41f1e7dfeecd86a150a4511e5"
    "cs"
  end
  language "de" do
    sha256 "97e63e9bd808a1ec108e3bc5e26349bd8fc6c01d3725ab8db913a3822dd2e870"
    "de"
  end
  language "en-CA" do
    sha256 "190d2217eb61506fb031c486d013ce52c80b8ea2ddfb27eca4233752cfc61d9c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0c5537a780a5ba1c5f8a87f52382ba6e4139e126607c3950f59a086b3ee5c61a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1995ddb8cf162a7479ce5d1aa08a62ccf25874daf14925db0ea7c5bc5b535267"
    "en-US"
  end
  language "es" do
    sha256 "672b337f24f11612f28ded561f40e29e00f7cca57eee71fe35ca36201e6b8b9a"
    "es-ES"
  end
  language "fr" do
    sha256 "2b56af624eca8b1a88d890bd0104d57aec118a02e49a0623bd4d11c77baaf4bd"
    "fr"
  end
  language "it" do
    sha256 "931e3a1825ae407afe0c5867b7fdb53596ee303f215097f0af71f7bf82e88f01"
    "it"
  end
  language "nl" do
    sha256 "304c6b32d72185a92b59804fa6bac94556d1440d6fcda4358a6cd62b1f6a05ac"
    "nl"
  end
  language "ja" do
    sha256 "094a1e0cbd3f5ba38bae089795b83fa268d1a96dfd7a33a211d515299445ed43"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "235e364baa2c2c8195b5e49b8f3ecb34520450fa1f2a6e5ff24174df570a2cf3"
    "pt-BR"
  end
  language "ko" do
    sha256 "58598ff9d1eeb59df10a66d9afea6ad4893ae819ad2693759d3731e689e660b3"
    "ko"
  end
  language "ru" do
    sha256 "a1474c2fbde19b9934ac94e0a92c5e34c91659953e5e958b004570036ee102e3"
    "ru"
  end
  language "uk" do
    sha256 "5aa2eb17ed9c5f5c7e06cbe9bc3c69569a3d1c108a5059c81a0c0f025f6abcfc"
    "uk"
  end
  language "zh-TW" do
    sha256 "05c9e9a36fd7a3bc542b8d88e312969f85cc6aa311372a7d00a56b9c9a9d7741"
    "zh-TW"
  end
  language "zh" do
    sha256 "69cfa8d7027f12e7157aa507cf5ca884f52d2fd053bb1f9f0ae44b072839521f"
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
