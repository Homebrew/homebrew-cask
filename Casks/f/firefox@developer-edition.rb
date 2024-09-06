cask "firefox@developer-edition" do
  version "131.0b3"

  language "ca" do
    sha256 "1959dc2324d6ad8b796e8d8e2aca07046230df7fd818ea0081ebfa9c0a352fce"
    "ca"
  end
  language "cs" do
    sha256 "faaf95e86ea1987eadd94e18e0e3f373e3ef00e71158bd5fb2832358c33e1611"
    "cs"
  end
  language "de" do
    sha256 "21139eef4d645ed7409cebf11c237ffb3c966ddda95792d994aa8445450f6e83"
    "de"
  end
  language "en-CA" do
    sha256 "9a9f075a9b24f2933ea3b69934f508d43dbec5b1ee2ecc6cd23095a52b66e21b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eb878bf286ad0c9e6cbf310fd2b781325757fb8bf5493be831f12ea5ee0f5126"
    "en-GB"
  end
  language "en", default: true do
    sha256 "074e4b624dd75f435dc55a91a85c5fe990f57d7883409bf46dc58060fd364db1"
    "en-US"
  end
  language "es" do
    sha256 "a17946f6414a496c06791d9bb9357e9b5c73ef75080966402cdae8b0679e5bdd"
    "es-ES"
  end
  language "fr" do
    sha256 "4643ed4664cfc3d40741e9e35d09e42768cdcab410fcdd03be356ceac826f2e8"
    "fr"
  end
  language "it" do
    sha256 "d0faf8ba2d99b10ddd98f0ef27ebaadd2f20d5cefc1558211e4fc33fcecb7b6c"
    "it"
  end
  language "nl" do
    sha256 "0314d70f97be56966dea747815e470c8e4183102dff01896ddc7f4dca599fba5"
    "nl"
  end
  language "ja" do
    sha256 "f10ddf0cb2851d0534b42ef32a0d7010be3f8d1020eb4cda8c23f7c412464e99"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "91a608664df0cd458572a55a9e4943309ad8f94933303f3bb257ab0ad5bd0c32"
    "pt-BR"
  end
  language "ko" do
    sha256 "257fa5c654a180c8d5a34e3c9e2f91b3698babfb56255589aba9cebf8c6cc488"
    "ko"
  end
  language "ru" do
    sha256 "fea7095399e13cd0cdadefe13a3ab28442de05a3914f1c279a6d4d80c8c3fecf"
    "ru"
  end
  language "uk" do
    sha256 "d6318e93113fced4d1ed9168dab7ba690c4e4d32d21f0ee492a9c3bc2a061a18"
    "uk"
  end
  language "zh-TW" do
    sha256 "66cddf662046129c314c3af9dcfe871e0719dcdbae82cd152b4764ce882d892f"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f8653436480b03d309df4a3682b9ebe9976ed20c1f1f7713588f9845b0586ef"
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
  depends_on macos: ">= :catalina"

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
