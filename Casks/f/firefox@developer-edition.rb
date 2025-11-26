cask "firefox@developer-edition" do
  version "146.0b8"

  language "ca" do
    sha256 "1344d1a233b9270e97ecb43a61b6f316ebc346248d7cd9788101a958d265ed1a"
    "ca"
  end
  language "cs" do
    sha256 "5e53a44285229082607e75e103828a6d8297933ab9612cf081a6727cbdbc8dc5"
    "cs"
  end
  language "de" do
    sha256 "42b35bdea78ab38e8e3226e8e6d66f25e79477b631921f4329a9b69b82572a34"
    "de"
  end
  language "en-CA" do
    sha256 "7bb3e4c7294b60b9029f523789bab4cff9dbf037635a5d75e007ea78914b08aa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "54bc53f04f29bec59ac46ae5dd37463af4d23d18dc762d3c8f341473545f6398"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c65c274b625ed82401e3ac4d7bcc55cab757ebf6b58dfdcbaa7a4ea0b511b10"
    "en-US"
  end
  language "es" do
    sha256 "adecf03c78472cef2dd01abf73fdca5b44ab86dd2a6b2019f75e766498b6fbcc"
    "es-ES"
  end
  language "fr" do
    sha256 "b8cfa22323e2cfc474e19f9cbe0190d2d4b9d30474f0ce798d65f872d8a6c50b"
    "fr"
  end
  language "it" do
    sha256 "0739a8b3bb61e8d297c1e07661d38b8820df82e05fc48a3248776d9a82693030"
    "it"
  end
  language "ja" do
    sha256 "7de8b44e6f5dcd86206ec34dcd9a594b132fc3b89ed56eb6a16f7f640c2e2d31"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "64b0e0d4296b80cbd34d8f44148ea78bdfad6426a5e8dfb58e1f27cddaa43dd8"
    "ko"
  end
  language "nl" do
    sha256 "f5bb3998bedb565fda101c7ed6aec56ba5a0996a07452d13c197d0aaa0b6dae5"
    "nl"
  end
  language "pt-BR" do
    sha256 "4a1a10797a76675b4bc16dc004641d6906a3d2bd7ea6b4f010e2f1eee032002a"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f2ad86c5cc3fae557debc4e6f9f28f17a29f78172cde41477064ce4969eecbb"
    "ru"
  end
  language "uk" do
    sha256 "8e04a7f2f1d08d4b57167b0d6fb85f7e161aea8348e9c10e3e01df2b1741d9b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa938775d7f4f7d7da1df8f4c0ede053d70edf7ea8088e6c23fd37949bdd505d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2aa84c82449f7766b94ab8f10f4cf3521bb267a340d8fa0ac4f2b0c9c9727393"
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
