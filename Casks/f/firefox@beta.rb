cask "firefox@beta" do
  version "156.0b5"

  language "cs" do
    sha256 "81c01d4ea964e7ce587c72dbe0e15ac1fa13f68cfa0ecd71f48f932d51d9e69e"
    "cs"
  end
  language "de" do
    sha256 "70983c66acacb9fe27d39f8f4b03186bc71c69627f9f093163079693efb84bd0"
    "de"
  end
  language "en-CA" do
    sha256 "8a65b4d62410149adeb77db7046afb6752a7c153558b0213501a87af61654f14"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b41600c8acae5a86f65254a66194ddd473e9d4f3128e795a35ca7d280090ea9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "848b807c9415cff30e69538b71fdb9ebbdf9e2c89e2bfb3c0d35ee74e189afbd"
    "en-US"
  end
  language "es-AR" do
    sha256 "d249b144c9258e9f8d1f83fed9fbe4ce34e6d4e2e846ad5db5c066afa1ae9f52"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2c6b04417721dbc41686ac85b14c53f15e4621d2cf4d45cca47298ce22b9fec1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b27e46a4af08564cc817b43b9451906795d9ab909a82796a7efbdeb6a33d881b"
    "es-ES"
  end
  language "fi" do
    sha256 "e9f649a8388a231f5e20015d42c5220f7b6a616d9ea512c2dcb55c3f80099948"
    "fi"
  end
  language "fr" do
    sha256 "8d32f8220e31d2d7badc7744076855ada4958f64196660de371e42e53aa5c54a"
    "fr"
  end
  language "gl" do
    sha256 "f096e361f3dfd81074bb2ef17a4e9024be9113cad3a07b1dec58cb900117aeda"
    "gl"
  end
  language "in" do
    sha256 "465369b8f6c2808e273496457546a6546dcc22c018a7c9aadfdd4f3f3273e2f2"
    "hi-IN"
  end
  language "it" do
    sha256 "018bf20884a27b0f1510aa84b9c2806e1eec3018483645c49cfae119c08d47a4"
    "it"
  end
  language "ja" do
    sha256 "727aea483016f14a26e765d1b87f8636e6090196bad668ce97b7e1b47a32863d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "38cee9d48e64baa42662105b8334bd0a7cda8dd0348acea0275f2d24660a62af"
    "nl"
  end
  language "pl" do
    sha256 "41ebf995c4e0f1c77267ba9a9e8e8a64408e03291bbc5bd17065606a00bc3000"
    "pl"
  end
  language "pt-BR" do
    sha256 "bb65bc856545da82855976fd5b5c65867c0f27136cfa3f0ac3861298fa53258a"
    "pt-BR"
  end
  language "pt" do
    sha256 "6ada401571a741e01eb525a20063674384c8ef7cc6d59045ebea70f7ce94834d"
    "pt-PT"
  end
  language "ru" do
    sha256 "6648be55a86448cf78abc5643be7f41533533aae34d142841afb69fb8c32d28b"
    "ru"
  end
  language "uk" do
    sha256 "f441d3f7916a11a3cb2e6fbbea857b0a1daad38c2a99ada8566846f6589ff74c"
    "uk"
  end
  language "zh-TW" do
    sha256 "8cf9ce51585a86c20462ddff217be2a13a9b54ac15f88edfa447d30d46958c70"
    "zh-TW"
  end
  language "zh" do
    sha256 "0491790175577b085ce26d2a38ad9300fdde9258ffd83f821dcefd4d06f70370"
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
