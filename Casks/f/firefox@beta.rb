cask "firefox@beta" do
  version "152.0b4"

  language "cs" do
    sha256 "9691e8d796d46409f6b618ff515d6ed03ee8795ac19ec00a1e0c047445ed5b94"
    "cs"
  end
  language "de" do
    sha256 "a4a7a046a61820448df555553f63802047e74845b9b3cced4260418463b3985b"
    "de"
  end
  language "en-CA" do
    sha256 "71e350bae794282811e6029e221405fbcce8e2c269434d609012712eeaad01cc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b524579b9a14f65df3eed6e590156f95a09c3219819b1e1adc6392fff5e96db4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e2f87b326a8ef3763bfa8f7635d46a37d1af6a492d7c74b883678dd509a14e9a"
    "en-US"
  end
  language "es-AR" do
    sha256 "eb4d9f3594142f613069eb573743fffb1bdeea7b45937413f3e60294bf20982c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3a3067414701c64671d0016ae23e8926a045d77225d3cae59b34bf5284b110ad"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8793d225732a81d39b5d6b468fd8cf19852b2f8f17bbb6827ab308d2745e04e4"
    "es-ES"
  end
  language "fi" do
    sha256 "25817474b76b1ae9284ed169f81ca42f3889c2bbe2994c85104a068c5b8eddd0"
    "fi"
  end
  language "fr" do
    sha256 "54b2a245c2d021e0d2fe906b235fe967d96b2eedd62ac6a2ed29755a6c967185"
    "fr"
  end
  language "gl" do
    sha256 "4e7ab2e8d40d00c4ee75ff01fbe86785e06d390863dfb5126c521401980fb69c"
    "gl"
  end
  language "in" do
    sha256 "023e75424af3b5341c53925654979dc248f6999bb50b5514e836843d25dc7473"
    "hi-IN"
  end
  language "it" do
    sha256 "edc19c18d064e477314f1b18817d70e3a32871286e8a5c4655a85f3eec1d31ef"
    "it"
  end
  language "ja" do
    sha256 "a5b635b0637ab2712216c6a802ad1efdf231da909a3513a81771a90c46eb5bd3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ab161adc92bf85567671d34701cab019c90888d11ab0ee8fe0cd0f18b588506d"
    "nl"
  end
  language "pl" do
    sha256 "c1a28b268a4c160e1c578daaf5183cbae39abee5995c6444331104732e9197be"
    "pl"
  end
  language "pt-BR" do
    sha256 "76f8a6ad3ba331cc3a114cbf3bbdaf5de1c13e9761aeb5aac7a00b006f5432a4"
    "pt-BR"
  end
  language "pt" do
    sha256 "8c9a42a1f51b5c1d6c24e3e903d7c83081fa71924041b97f9380a07244ea39c9"
    "pt-PT"
  end
  language "ru" do
    sha256 "1a293bdc7e26131075e7d2c94b021ac7de0b59dda7af47e8b2c7462d599c2c9a"
    "ru"
  end
  language "uk" do
    sha256 "1a8568cbbead06916d3ec53dd43ab2e8fdb3ba052a1861ba4f8a4d5247862247"
    "uk"
  end
  language "zh-TW" do
    sha256 "696743ae512ff5845fc419209b7150dd47777bba1fc069c54ff5fe1299aa2bab"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a96d0e82222e840d0f93e257d1f5e60a1ab32c50b27191e2ceca4b690726d82"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
