cask "firefox@beta" do
  version "141.0b9"

  language "cs" do
    sha256 "da2905518841e9543acaba64199bcb3c0691d6b4667aa47cd78dd42545cbdf5a"
    "cs"
  end
  language "de" do
    sha256 "bbffa8a70f6a848d318cc56d3b18f7c09225cae32af870c1a4ca12fae4a01587"
    "de"
  end
  language "en-CA" do
    sha256 "ee99cbaffbfb548811c3b869f814fa11709777c849331915f421f06ccb421bbc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4472c20e1d6d41bbdb1e186b62e519d01e831441ef96278d1edc310dea08aa85"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e105272ffa164d501a78b3a407fef1afcac80cab4b9e03de07f3599e8ce39588"
    "en-US"
  end
  language "es-AR" do
    sha256 "a419a6e39609391186466994092f0d6410fb1aa399c2dc704e2bab232990d890"
    "es-AR"
  end
  language "es-CL" do
    sha256 "da42157be7c05d21b58f4e6a601ee7da21d6a8fb00c8e614c97e663731864cda"
    "es-CL"
  end
  language "es-ES" do
    sha256 "155c3b09998e38b82113e38ac7879ece7f997810104f9830e3b1ac9ccf8de2f9"
    "es-ES"
  end
  language "fi" do
    sha256 "9c582c0987919e2dbe9030b2c43905c08a0debd52b730c950e560f0089b190cc"
    "fi"
  end
  language "fr" do
    sha256 "7a0f446b3a68f8b038ebaf9f7d16f24fc9c6c7f3ffb3062040d3c69735316f47"
    "fr"
  end
  language "gl" do
    sha256 "47d13a8327f4ae1601bacf36e9164e9eea9f9695b331afe9c7015c000f6d1231"
    "gl"
  end
  language "in" do
    sha256 "6ef8ff01819625042e137dec5db89a69cfe8664c86d14153ca7b9ab37589153b"
    "hi-IN"
  end
  language "it" do
    sha256 "da0455b54250fe5efd78d47d3cc983d54343d94101c2d7154b9f24f7f31bd120"
    "it"
  end
  language "ja" do
    sha256 "fa578caf2e310972722fa500d59fa71bcbf90f23c0c940a60690bfcc8dab3a1b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cbbc628ceef0ef6163cff6c1c4fd9955a11d8f2f8aa4723536a56fb1930d5588"
    "nl"
  end
  language "pl" do
    sha256 "e1086da96b2ecb25ccf9118edcdfc9c5ef2142e5941c9d65f2331a3488afe118"
    "pl"
  end
  language "pt-BR" do
    sha256 "8884c5a5ba973eab848b660c8daa1e79cac9374a2ad5fac1b3e1647433a73fe5"
    "pt-BR"
  end
  language "pt" do
    sha256 "65b5bac7c412ff7937132fdc8a4359946a071f6af4fb0dc3bff8f197e02a3474"
    "pt-PT"
  end
  language "ru" do
    sha256 "534d2d4efd5f44da95233c4ac8a8e546816ccb5d849ccb724c7ec924623b5069"
    "ru"
  end
  language "uk" do
    sha256 "aeaa5f9ed5e2d4458e9295ae4b4f4a7e516b5875784e485c85b146f8fcd001de"
    "uk"
  end
  language "zh-TW" do
    sha256 "e815ca59c292b402a47d48b8fb306b017fb8a9ab96cdcdcc29441157080cd07a"
    "zh-TW"
  end
  language "zh" do
    sha256 "c93754436561af3671501b3f99996d36b9ceacbbebc4a62ee72492adc041ca94"
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
