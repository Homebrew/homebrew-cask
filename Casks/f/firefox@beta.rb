cask "firefox@beta" do
  version "135.0b3"

  language "cs" do
    sha256 "db9b2e48c9a077ad74c912cda8e7437baa3798a8c9b81589391732adff682582"
    "cs"
  end
  language "de" do
    sha256 "1aad3f1f6a2b1155baa0ceb7bfac91aaa3c0d2eade96339b2e012fbba9aaddd2"
    "de"
  end
  language "en-CA" do
    sha256 "02187d86231ff25c8c3d9867c4ad663c6b0e7f8efb29357e9c34b3ffa68870b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "709b203a17c56593958119c678b6fc04e8e36dff369f6f2c0ea49f21d03b7cf3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e78c8d6b6facc1595384535776d88593b2633693d8e8998200f7b66551ecb5ab"
    "en-US"
  end
  language "es-AR" do
    sha256 "a4815b14fedd178d8885b47160b1e32a9ea8707a2e6cc7d48cb08f2e48625b59"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d24acd17bb757c90794ff1c535ecbcd4f7acc09e334ad9f3ae36eea0db2f8be9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "83d5cff388e3994669849b368bb944696063737c80e46d30c9b432e63ec37e74"
    "es-ES"
  end
  language "fi" do
    sha256 "a0e1a97f413e25c3c21fd8b815aebeb7e9cd3878f9f4d477cfe1da963678e7d5"
    "fi"
  end
  language "fr" do
    sha256 "743761ca993a828d3b574db6299b87e4df5535a0569f5843736f5ce36e17c993"
    "fr"
  end
  language "gl" do
    sha256 "244018e3468db2de799f69b7ba786bb487fcbc1bd6cc7f8a0dcbb84b4a80c2db"
    "gl"
  end
  language "in" do
    sha256 "49501452bde8d92015e9fb3e0991937885e27ee2daed830ece1002257e5c2972"
    "hi-IN"
  end
  language "it" do
    sha256 "5d5655338dff4dc07fa79ef2419a9c89c715762a58b4dae8193271f0d9e3cf58"
    "it"
  end
  language "ja" do
    sha256 "786afc4863bf272c209669cc94605b88613208c170dae193ed63173e25b2c4a8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9cf74c753e97fba802353cdf40d9552be906606d00965562589d437dc7aa91e5"
    "nl"
  end
  language "pl" do
    sha256 "cc37839c7a7230a19b15dd396452eaff07b25394313047c2fc51d6cdec7ffead"
    "pl"
  end
  language "pt-BR" do
    sha256 "8f29cc0c13dcb24899f35a154c329eef621d567d4b997e661331dfe7b709afaf"
    "pt-BR"
  end
  language "pt" do
    sha256 "c629aabe4bc9f295f96505e7eca195b861a6dd1cca7628480a728bce5f0c9076"
    "pt-PT"
  end
  language "ru" do
    sha256 "1786a9fa6a485ba52917d0399afe2fd733889dd266321aa6da5ebb97f5cdfec8"
    "ru"
  end
  language "uk" do
    sha256 "d214d745ce1bd6478c8753f71ef757f423319ac7759979d7318bef68aaed0fcc"
    "uk"
  end
  language "zh-TW" do
    sha256 "782eaaa36837958be554f2c190bdd7f5e667ade3719721a5abc2f79bc40f396a"
    "zh-TW"
  end
  language "zh" do
    sha256 "52ca8561f9e0148b9302de0c348efb24100bbe7f32e37b4b215938c78cdfab8b"
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
