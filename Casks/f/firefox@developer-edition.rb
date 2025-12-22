cask "firefox@developer-edition" do
  version "147.0b7"

  language "ca" do
    sha256 "c1b45fa3af2e425c539ecb84737535b478ee7fae2b298bc353bf97ca5c6e72d3"
    "ca"
  end
  language "cs" do
    sha256 "f6d4316e7b06d440d3b481d44db7e195ec0be2788a2b936377b867a6a31eea74"
    "cs"
  end
  language "de" do
    sha256 "946a125e7fe4a4f8959f63b3601ddf9d922b6c12f4ba77caac0fd9b36f481ccb"
    "de"
  end
  language "en-CA" do
    sha256 "b85e0f6cc06c8d38c3660ff44238f2b59e069a7459dd7c9befe923f92e96b49b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d9ffaeff49f6a9075e151a99c5dac0e5c9adbb6822e1930c2c37c7651d16fdb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7ca0fa6e1c47d1220b1b2479f4c3863335a0d1ad7df5348c623225d613c20e7c"
    "en-US"
  end
  language "es" do
    sha256 "68970300a85fc8c08fdfe4a859f40384770949966e088344a905e7568ce0854f"
    "es-ES"
  end
  language "fr" do
    sha256 "2f81c84e57d10f892ca8d8e5900e1871caa77fbd59c77571d1a9f1f7b8ced513"
    "fr"
  end
  language "it" do
    sha256 "aa39cc2a24d0f0b09c55e0939d575f85206a12a2ac628665ee53b58d171d0c96"
    "it"
  end
  language "ja" do
    sha256 "b3d2eae08bc37630b1dbdd1d39d505281d28aa6578f45d9cb520679aaffc6e63"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e1cf5f2252204cc2f4e3a6d3ecba3e90298699d385bdf33f26d9bbba209d3c79"
    "ko"
  end
  language "nl" do
    sha256 "491226f9a38250c7f5f09b87282a4c07fbc07f34b671987dadf71ab4bf148cd6"
    "nl"
  end
  language "pt-BR" do
    sha256 "ada0073e3f500216b3fb8277bdb5baae4ee1d9b993a0138aecdc5c77e0841f33"
    "pt-BR"
  end
  language "ru" do
    sha256 "97039d3747b8c0266edf43640ffad3085632683fe800d0fb7238cdb76610aecc"
    "ru"
  end
  language "uk" do
    sha256 "a06a4155f61fabf7ae2c40b33158a393c00008a20492cf37d7f5df6746f1461f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ffa344c02e0a76b3cbaafae9d297fccfd13c0cbaf16fcb3feef3660357a3d07"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7fb4994c8e19925b7ac39f5265a7fe67afae2a9b8f85a81835e136440afbf1d"
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
