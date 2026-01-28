cask "firefox@developer-edition" do
  version "148.0b8"

  language "ca" do
    sha256 "a867ff5ab52bec5b5fe959be5ceb94e84d75c583562258c24ddaa54d23d70d6a"
    "ca"
  end
  language "cs" do
    sha256 "6e076a52876d733649a2b3a89b63f5ae4b3ca470d87fa9c1e51f08f1476b75b8"
    "cs"
  end
  language "de" do
    sha256 "4623079e9e33baa372ddb4c0a25ad48c835fcf44ee40c9f94662528b5909aedb"
    "de"
  end
  language "en-CA" do
    sha256 "7d8debe9b7d5bc62c02b62299b78ec03be32faeb64cf847711becbf9f8ce60d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "482a98ad9f84de2e8e270555d9863257163ed0663d2cff27030e557b0a823f57"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87068679abd278132d3b3941dabb1cbd92809793e451e846167d8312a08fe8b8"
    "en-US"
  end
  language "es" do
    sha256 "ec81e9a8c59566f1fecb6bca88f7da8b55ad6a8f665a20e13d3243594d93071d"
    "es-ES"
  end
  language "fr" do
    sha256 "4ae75ced9772ce8093ea1623176a69ccf718283da5073662f629fea506e0d0b1"
    "fr"
  end
  language "it" do
    sha256 "d32b815706dd87ef6744af89cc43ff48c1561e48c883fcd733bc8f985a7c2181"
    "it"
  end
  language "ja" do
    sha256 "d26a9492c76219a46099019638ae7a628823499954fa965c0c2a231e01b6e869"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bc514e03c3acc0cffbb981bf355b1c70984f2006bf69836ab00ca518f920cc87"
    "ko"
  end
  language "nl" do
    sha256 "5e0ebe804fc26899f7845911359fdb7d9a3ba5382e681057bee28c635a2a086e"
    "nl"
  end
  language "pt-BR" do
    sha256 "43994169b8186842fa398f1929abf9212e8f65ccfebcc71424b307fbad72520a"
    "pt-BR"
  end
  language "ru" do
    sha256 "a3fc22166a0d434c36a01feb67975dfb641105b33a1dc4108038df91faf67817"
    "ru"
  end
  language "uk" do
    sha256 "d636f64403467b787e962417284b7ad307fe83148958bef06c99f1d8c90bd6a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "8880218c58e6363d52657fa01d8c6cc4785824efe5bd1ed7ca3152c0b55ad539"
    "zh-TW"
  end
  language "zh" do
    sha256 "e87a8c9d3f034f21affb2df1f38563474a86f149ce9bb171d8a07da698b883aa"
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
