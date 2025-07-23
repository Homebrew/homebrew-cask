cask "firefox@developer-edition" do
  version "142.0b2"

  language "ca" do
    sha256 "5a988cf480242667ec1f3116f93e597ed53b5454d77152a6999c60158b1b60d4"
    "ca"
  end
  language "cs" do
    sha256 "da226de52230dea6586d7d4aba5e8e4af823daea0785dad22956b51dc63e2160"
    "cs"
  end
  language "de" do
    sha256 "448abc128e10472ebe12cdf0ae42ead3c1546450fe4598d279d1edeed63c2631"
    "de"
  end
  language "en-CA" do
    sha256 "7c995a0c359b75c42c987905d334b4f6197100ad25997644d5eaca82c48f942a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "440771d3de6ef10fcf14d9ccac471857ee4204336e2adbbea682a8e59fbe5664"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0aedd072c9b3d4e90ce7a7fa6e2154bcbf35ddf638d7edc721b9e61ed46c99e7"
    "en-US"
  end
  language "es" do
    sha256 "e985bf7e234f1e8fa8a0a9f5f58f2aee43abfb7659044e8a868528d32b6520ec"
    "es-ES"
  end
  language "fr" do
    sha256 "e3b9d3a0eb734bb20f38f31d5648f12e508b25d1eb2dceea2eb8592e2d30fe97"
    "fr"
  end
  language "it" do
    sha256 "ac9c490af77f8d12b87a30d0de7262e79d89f81aff104a24a9d456aa609e346c"
    "it"
  end
  language "ja" do
    sha256 "385b9dce34a5b9cead697680114550922d6ce3931a3d84c6254443e73d7ae557"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "61ba0447bb1df7785572cc394e771ceaefc449cf47e849e04318afcdc7e97d64"
    "ko"
  end
  language "nl" do
    sha256 "a386f22154edeaea00699444f6d3039339863683ac645638b52cc7de688b4e75"
    "nl"
  end
  language "pt-BR" do
    sha256 "2b9de913e6cd2e2bd3f70ce1ffad0cfd09d7ff7c1ad4cb7e555353fccf530466"
    "pt-BR"
  end
  language "ru" do
    sha256 "9f9274cf47f9b5595a5e7623afe9a053115a6d5b7a9e2be3290beec85aa6eca2"
    "ru"
  end
  language "uk" do
    sha256 "4c2b8f254750f8dbdc5c62f17c5f1aa652f635fe15056aff2a5db192935a7f37"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a637b617fbfb90325adc8343cf8afdb977b46c25604d751530140f7865fdbc3"
    "zh-TW"
  end
  language "zh" do
    sha256 "f09b003cb2dc70c54597899d2978f4f68abc364d6a6a0f75d6c8f12b8cacee9d"
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
