cask "firefox@developer-edition" do
  version "152.0b7"

  language "ca" do
    sha256 "9da1835c1a5fd12ac08aa94bb33133f33699c70b8ee34a2023f0c892ae946626"
    "ca"
  end
  language "cs" do
    sha256 "a2e71013157906d14444f36cea96d5ddec2e6025815debd58c6f07f1682a3fd9"
    "cs"
  end
  language "de" do
    sha256 "536b4d601e1eef847d6292a02f170c0308d71de985b4ddbc118571d33d213030"
    "de"
  end
  language "en-CA" do
    sha256 "06ef1fcd7bc13cb5f6e5ad33ce71ba336635b11c24d0cb20b45d12962da56f7f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4381b13514c94df1092e75bbc7b6b2485a80307331c7987d098e25c74adcfc9c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "30b0e709e4bd7f3f75e41ea0748d8a22ae9c1fbe01031855530a2926d8c537b8"
    "en-US"
  end
  language "es" do
    sha256 "38b29f3e3f896845af383908a872f04f1cb8eb61d960932cff7004e8250b55ff"
    "es-ES"
  end
  language "fr" do
    sha256 "42c9668a9480496c22dcdacfa67668496cf19b6e6385543db9357383a7b1d0c0"
    "fr"
  end
  language "it" do
    sha256 "95cf9314417f0f58f150d27e8fa06f1008a996a0a813f3ec3b2760f45332f72b"
    "it"
  end
  language "ja" do
    sha256 "b78e6ef652aa7411000339f8bea61c82cc6dbfd9069ad88ed7b4931b69b7dbdf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f195344d8449c6bed37c3b2e4a8a91fc51d88f0c1f1882c1088a4c133030860e"
    "ko"
  end
  language "nl" do
    sha256 "78436d3e93cf1ea32a5a859af9bf68d15460d05fe103b0c49dadfe191d9deb0b"
    "nl"
  end
  language "pt-BR" do
    sha256 "e72afe4d00506849005915483e410c166942942548c0aea6902aaa0079cd0359"
    "pt-BR"
  end
  language "ru" do
    sha256 "e348e735e762b1e8d3fa32a4fac674ceaade264a970445cda3468810acc86cb4"
    "ru"
  end
  language "uk" do
    sha256 "d3609bf72a0b8f087ea028d0fe18965458374e7ab23b5dd000d211df8196e7ca"
    "uk"
  end
  language "zh-TW" do
    sha256 "15b37c696c04a2c4ed6db0eeb852adc31140b8f22cccc4cd6a041625ac032879"
    "zh-TW"
  end
  language "zh" do
    sha256 "7f4232dff87faf790e7c308068368393bc34a3df3342a82ba91dadbcfc15a0c6"
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
  depends_on :macos

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
