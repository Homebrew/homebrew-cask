cask "firefox@developer-edition" do
  version "162.0b3"

  language "ca" do
    sha256 "ba14ca450d507665aea8514a5a04446157bd9a10830bcfa63529269e0f7b8ca2"
    "ca"
  end
  language "cs" do
    sha256 "092755f8602120837824fdaf47d6a9e2dc9215d6aa694395da7377a5c8470cf8"
    "cs"
  end
  language "de" do
    sha256 "045052de28ca1a8a29e8e7a5c3eae5206e44c2caeb78a83523f850b8ff45ecf0"
    "de"
  end
  language "en-CA" do
    sha256 "a4fca02a8573dec36e3b06cddc7210496890f0c718fad0453825c32b4471ad06"
    "en-CA"
  end
  language "en-GB" do
    sha256 "67d941fe34f49e5cd572e2f2014386b8e9fc3ed4572c527de74b205ee654603e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "239587325586e42a134dc942449fb6c158a5bbc89a6b78dce3889d16929c5390"
    "en-US"
  end
  language "es" do
    sha256 "b5a41363529dec2aa24f1d7baf5fbc3bc476d894c09612102aa62fbad00f960c"
    "es-ES"
  end
  language "fr" do
    sha256 "285ac04e2044464306d8b4270e8e32b9bae753052a756d2c3ba1def3c213508b"
    "fr"
  end
  language "it" do
    sha256 "fc3d780053584c869cb1dc86984d6ca6259d078bb6debdb494be0f932f7cb948"
    "it"
  end
  language "ja" do
    sha256 "52b2d83f726f85682d20c1b461d3d01338f1167105dbb425408f9c0aaf6c4d75"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8ee3cece66d0d245d6cb0044ff460bf64a856cf45cc87e2d7dcc9eeada0b78b5"
    "ko"
  end
  language "nl" do
    sha256 "2f1e2e8f1822f5a354e67491a18f1962c5d2a044ded234e2acaad6e3ea13c29c"
    "nl"
  end
  language "pt-BR" do
    sha256 "11c307cea9398c824e6d6834b06bb5896317c79c7c0f5e1ebb1a7d3673ef3f88"
    "pt-BR"
  end
  language "ru" do
    sha256 "c5654e806e4ed4cb192b7bd55fe517de689f83b546df9072a702ae9d451a4e35"
    "ru"
  end
  language "uk" do
    sha256 "ec424d9ad80ffbf6650ccd7a70325273304289882b9783209472cfa0a821372c"
    "uk"
  end
  language "zh-TW" do
    sha256 "150e51a880a81cd2e838bbfcbf42d58ae91c56387df6d49d8fda1598fd52d2df"
    "zh-TW"
  end
  language "zh" do
    sha256 "0fef0caa2bb669b5c826d463bf2e0b1fe1669cb0b96b70f0c1ac1075b8c40a9a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
