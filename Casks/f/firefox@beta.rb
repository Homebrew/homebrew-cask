cask "firefox@beta" do
  version "155.0b5"

  language "cs" do
    sha256 "6e35b5cc0f0754c2058648cb2a1f5bd48ea37634232f001a3e8d11b10c82fae5"
    "cs"
  end
  language "de" do
    sha256 "a1b6300fb186ad0d96d69bb12c48221b9ab8abdf8a7e6529d673bebe7f3ed8ea"
    "de"
  end
  language "en-CA" do
    sha256 "0bc08c9821766fadd1b3f7589eacbf2db42f9fccbb6e6dd0ad9e1a3a03ab8239"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eff41f5a6ce67b2d8d0e729fabf0c3a952b5e5e65fbdb83ecf68c680ebed6614"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1291c55393011ddb4ba3b434c36e2703c62a83c580e2e6d240705747ecaec248"
    "en-US"
  end
  language "es-AR" do
    sha256 "2b2be9edb3873a41d58099a0ab8367b6c3ed39803785968587f26568b956b61c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e300b38a63a1309c88e56244fd93160b00909d678f51469ddf23d993a6224152"
    "es-CL"
  end
  language "es-ES" do
    sha256 "5058b84c981f74d8869a607352ab1c024ecf76bdc87c152297079dd7dc465456"
    "es-ES"
  end
  language "fi" do
    sha256 "424248d3deaefe6f0cd3684797821bee3b9c478e34355bfcf18a08bc9f152f73"
    "fi"
  end
  language "fr" do
    sha256 "dd9647e504f620cc43f567948194923615e4e1c211b9a35b14cf6bbfa33e87e9"
    "fr"
  end
  language "gl" do
    sha256 "7bffb862b7c4114459ffb9a0a6da5e7ca403899c89c453fcc58557c095a857cd"
    "gl"
  end
  language "in" do
    sha256 "4c2ad7fa0c0a87cad16acb719b8dd824b7df0ac1e74d8e7e85144550f590766a"
    "hi-IN"
  end
  language "it" do
    sha256 "7fd80dfd073c12e03e49cdf71dc7227f259bb0ab25415b3a8d79232e6f267a3b"
    "it"
  end
  language "ja" do
    sha256 "42d12238ecb218f59591136e51bc4c060071a117377cac0470bdf12501fa77d2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6c9ee43ad6339907ff8c7ec400a98b838592552e16296124d94103e51794377b"
    "nl"
  end
  language "pl" do
    sha256 "70c7eca4ccad526546a44d8219ac9128a483fe790cded0f80b5512c58874c99c"
    "pl"
  end
  language "pt-BR" do
    sha256 "39766655ee3267b55e5d3978858eddf83846ac6f2b942d5da2e6260d0e761a08"
    "pt-BR"
  end
  language "pt" do
    sha256 "0ae63acbedac7f074ec1be9caabc43aeb8cd2fc3ef57bccf68b1fd37bd7313d8"
    "pt-PT"
  end
  language "ru" do
    sha256 "08c8fcd555c54eb69a66d29975a8a3fa8b05dc99646da95e45bc720020c4b4a4"
    "ru"
  end
  language "uk" do
    sha256 "3d415d92374baaf48e4d6f9329912400b9f8f5e8a2b26e27a85f10c7b3ac2ac8"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa02780ccf20c9811fa567c8ef17c3c8bffe2ba454e98fce69b3ceceaaf9f66d"
    "zh-TW"
  end
  language "zh" do
    sha256 "bbf5268f6b4557a6c5328e497d85fb2e9f0743152fa63cc34cbb8ce9d23d391f"
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
