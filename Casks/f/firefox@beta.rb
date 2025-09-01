cask "firefox@beta" do
  version "143.0b7"

  language "cs" do
    sha256 "e3b4ffff1f01682e9ee6ce0d0ca10b3371aaf1526e22ea5bd23ed00b8e4eed6c"
    "cs"
  end
  language "de" do
    sha256 "20b3c0df6787895efa9b76f0e257d91901f92d5fa64b48d03cae97264012f959"
    "de"
  end
  language "en-CA" do
    sha256 "8a520b202b3f8c9b9babe8e1177662f178d52f01d516e1fb0d3d8f08084271eb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6af06d58f70567af9c9501880788d487fe6748aa4e983d961c009bc005a0ed1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a3b48e9900f2d0866de3b3329911361427dfd7e98f2999897f278aa4a855d4f"
    "en-US"
  end
  language "es-AR" do
    sha256 "b01414a5677ff39f712af1fb79a49b254a81ea16e25792a4f97635f4484ca07e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2964aec3d0cf327fdc6706a8eef1dad0eeab8b263314ee08b72a95c49eb4e1b9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ae2d0e77aad5dfb68676bcf299d13fcc2992a3b0eb78fc5053133ab1dfe28d7f"
    "es-ES"
  end
  language "fi" do
    sha256 "2218a26337d938e7d7470c154ffa59f5016dea0c50f437de4560a09a2e1babb9"
    "fi"
  end
  language "fr" do
    sha256 "ca6620afdf6bda7cae8067282175bb8208171568315b9b7fec72c07ff2dd30f1"
    "fr"
  end
  language "gl" do
    sha256 "43e40a734f97abfedb2a8abb0a7d2f058ba360841287b63ddc66ee43531e13ea"
    "gl"
  end
  language "in" do
    sha256 "505b7b6420e359da98f9453e67453da165aebb4ea9bf8fd0b88a2de1ff2b97c6"
    "hi-IN"
  end
  language "it" do
    sha256 "dd80d70c8250f60e4d8dde97edf8cf3f89778d7950746796bd1d77dc49ecb406"
    "it"
  end
  language "ja" do
    sha256 "8fbebb562698fb19359c459e46419e6b933f912b861c657eaf1c7f61ed0ea8f9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5cfeb4b695bd42a93c6c97b25f30422abd30ebe9ab3b7ee8e3a237ae1baa896a"
    "nl"
  end
  language "pl" do
    sha256 "0b7f9fc4301abe1eb05bcc21f0821d48bcd08069c96162081c07b6a0b3b93348"
    "pl"
  end
  language "pt-BR" do
    sha256 "4c608e6fde77ad2bf77f3db48ccea64852c44241bbc4999c65778e7f9b766298"
    "pt-BR"
  end
  language "pt" do
    sha256 "288b36e97d26e380fd092d0f3c09a49cb7b075a8eb67dc77bfbb605e58d27491"
    "pt-PT"
  end
  language "ru" do
    sha256 "e4e0c1520f29284cfc2378fee2d270d7ba7c99d071c20f39130949310c77c1a4"
    "ru"
  end
  language "uk" do
    sha256 "06573821164896b923e66a8d2ccb7e8b70b0feaf9c1a4797c7f4284f1fd1d0ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cdadbf0b7947bd362f13545ed2efddeb6cac6b1a04f967795e05a095bc56af8"
    "zh-TW"
  end
  language "zh" do
    sha256 "07cbafbb97d6034fc775e7a0bd1d9fb89ccbd707ae21f7bf2e6ed17dad0d00ce"
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
  depends_on macos: ">= :catalina"

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
