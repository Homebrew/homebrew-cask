cask "firefox@beta" do
  version "159.0b5"

  language "cs" do
    sha256 "e77347965d8b5921eed5b4f3a407b37fa9a39892bb51d6d36e66f617a8a079a2"
    "cs"
  end
  language "de" do
    sha256 "72ade0eb7ea3acb8afc70a886b16d7906b35ceb88c2cfba3afa1c667f611ff45"
    "de"
  end
  language "en-CA" do
    sha256 "1384905490dfa7ab765cfd2408de4233bddf396d98f5007262170fbc0ba57507"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fef911fda37bb7b1a2a75fe50672962d771cc712b27c7b0264ffd489246343b9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "788839b803d43e78d4e4e48815fae39ee50365ced8fce67ecd9ee28a39b40509"
    "en-US"
  end
  language "es-AR" do
    sha256 "688ad950b391be7d451443dc61a0f90f3ce1b2582c00f99a8108495d522e767c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f3eed00b1235f8148f0ace5cf146d67f0d96c604700fc1d2919d967faca784f6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a74c8cc6223c4495cece5a92aa40c2ee7ca4d04d087226575f76c157bda25d90"
    "es-ES"
  end
  language "fi" do
    sha256 "7d6b74da0dd7b982f87b492f5a4825b3dedda3e4b9364ff8952787da7ad217d2"
    "fi"
  end
  language "fr" do
    sha256 "af3bf2b19594aaa016ab44ddf436c868393d7e2b03408d6e55ffb57bd847cd31"
    "fr"
  end
  language "gl" do
    sha256 "900e1a792b8351b83d190f41ce5944ced2c2a9f820cb6c3aaf82908504ad4a02"
    "gl"
  end
  language "in" do
    sha256 "73bca371f072f527da632fd3c87f17c06c4997d21183077eaf48749d6a4292ac"
    "hi-IN"
  end
  language "it" do
    sha256 "c4a53c5b374a9cea8c716faff19a8763f025b783c9797febb7b25492db5f9bb2"
    "it"
  end
  language "ja" do
    sha256 "a173b83be6c854ee0417415ca8ecc800dbea64c0798ff52f339196c499d4a443"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c8455cb83484def20da2fad7a25f67aa27b58aaef475c6e58c594a5340103130"
    "nl"
  end
  language "pl" do
    sha256 "166301d1edc2ea34100b7ab5667333448d4e4e82ba230a1937b41ce6cf3bdc91"
    "pl"
  end
  language "pt-BR" do
    sha256 "fa14339271b5bb9fa5f5b4edd2e73c215a888472dde88739d43efbcda2ab9bcb"
    "pt-BR"
  end
  language "pt" do
    sha256 "9adc404fe40294d6fa7f5f6081069e118686115b8e8ace7609a571accb1619b9"
    "pt-PT"
  end
  language "ru" do
    sha256 "c7786bc56e2e928266a730426cbadb93cc363159e25ea73e7998bf19d255f127"
    "ru"
  end
  language "uk" do
    sha256 "51d7a0552303727a3fb3312793e48ddb30ad899405751b6249d6c3a2cce14e35"
    "uk"
  end
  language "zh-TW" do
    sha256 "236eb09e2f8a1ea2a8a6320f00fcdd10ab67b4ab2bea7cd552d830929f7215a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "6fc2333706b63009935179cf9d801c76488e927ddee3cb4679e373dfa0297e87"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
