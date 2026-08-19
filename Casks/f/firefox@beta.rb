cask "firefox@beta" do
  version "155.0b2"

  language "cs" do
    sha256 "c535606fb84d688a249ebae7d63b684e15e254e3bed8d1919688e35075bb7270"
    "cs"
  end
  language "de" do
    sha256 "0dbbd68d527f846e10ecdd9ff6612573d0abec5fea945aec583de36b109914af"
    "de"
  end
  language "en-CA" do
    sha256 "fd572b53f538b92fb56423c8f5c480920a30f84fec40469e197223679acfd398"
    "en-CA"
  end
  language "en-GB" do
    sha256 "59093fb4709ed3bc5bf9a3840a78779b8cd796bdc328ecd5c408ce4bb7312215"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63e453a637b686b888c50f55ad917f954466297427708743f1bf0223b1eba9a4"
    "en-US"
  end
  language "es-AR" do
    sha256 "8a77abdbe9921f7275a25da445e24bc6b4222d3f70f9b6e643fd12bf5eaabfc9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ccf1ed9eb34ea007e35de35c01223b292f71fb2b21b17fbcc830dee5711191f1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "50700a3fa4f4c3c521b746490892d55f1d0544452c951bab8c4a54e0fdfad822"
    "es-ES"
  end
  language "fi" do
    sha256 "b6653459c7fc71954efeed81935078a13dfc5cf49114d112c94fb859a7f43e79"
    "fi"
  end
  language "fr" do
    sha256 "e5dc9d1a7b911f9e2e1c44387dab7007abe769d5f1403d19b8953ee5cacd044b"
    "fr"
  end
  language "gl" do
    sha256 "c7d80833ab93fd1e80b6fd8254491aaf77dfc040d36a0758f5111ecf877d3cf4"
    "gl"
  end
  language "in" do
    sha256 "2314c362aecb12d3734f31dd46abbcc68c81508898f6269de0ef32bdb7210b93"
    "hi-IN"
  end
  language "it" do
    sha256 "100028310fe6ddabb5f90751421ca4aa626fbb59102d4c1dc236d9b1114f38e2"
    "it"
  end
  language "ja" do
    sha256 "773080200b7a28b79cff8858f448eb221ed1be0a3ca11c2831e19b80738c73c3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4f51d1e39f3dfcb027404cf9c82a8e2540ee0f8d6d705de7905062cfdf86ea08"
    "nl"
  end
  language "pl" do
    sha256 "c80dd44a09419fd5892ce352747873347de0fc25e7ca3758bbbb50b028c36295"
    "pl"
  end
  language "pt-BR" do
    sha256 "872aa263b61a1374b2df1a51d82f7c875046564a8e090d302dd8baa0504c8d24"
    "pt-BR"
  end
  language "pt" do
    sha256 "1d9f2387e61a31e1b2451879696d0e64b5c9b8b4237c8ffc3f1d40872fa472d5"
    "pt-PT"
  end
  language "ru" do
    sha256 "3171130543cca1efefab1ad160bbae87d4725cf80eb59d78b95eb841fd67cba2"
    "ru"
  end
  language "uk" do
    sha256 "f722fb9b59f29d006133eb47e9c6ccd7ffcdede330f95bae31bd9e29581d6475"
    "uk"
  end
  language "zh-TW" do
    sha256 "db89946f6b206b219573353a3de80b81726397da6cba6c7714166e1db87114d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5b8d8710b6b8d4378f4939afde62e5c87f5792e44bb3ac47d77635aaf6cf75c"
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
