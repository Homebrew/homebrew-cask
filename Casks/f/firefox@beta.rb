cask "firefox@beta" do
  version "159.0b3"

  language "cs" do
    sha256 "2fd786b182cf94a6426f9398c9322a370b1693c260bf1974239e637cc29882a9"
    "cs"
  end
  language "de" do
    sha256 "c52b9a31542e9f1ad2c21fff99309ea687843e4950883e985964d3332a8e3607"
    "de"
  end
  language "en-CA" do
    sha256 "9b79a67b892232e0fa5fbb5482a9691b4088548b473343e2095139bdb12393c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e98701391d9e2b3629703dc26f7f70094c0686fc9d6e76b311cc147de94e04f8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7efd0d7b004fa5363dd2cc8fc808bdd5a02a9f1b16d1a83e09eb687439fa92ef"
    "en-US"
  end
  language "es-AR" do
    sha256 "a9b9731d46f99fea66658fd5f280f5b7cf744adbf0f9e2604417d7c2d24db7a4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7610f8a1c9821899d5887a604bfcae5349c84b85d377c2f1a087a3218efa00b9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d39d1e639c58a7c4d1bd74352ca56d0da9c84b826e84c7731859b027834b19df"
    "es-ES"
  end
  language "fi" do
    sha256 "c0a44fc8560fee2525ae18a70667d59b23a25541504e2da13b1f7c552795e020"
    "fi"
  end
  language "fr" do
    sha256 "9088f59e92b6a12b77c75991efec90bbcfdf9f8adc0a0ce7dd3b9fc5b1c79089"
    "fr"
  end
  language "gl" do
    sha256 "3510a0c0445de240015c6bd3606979aa18644dac4163dfd38e027773aad4b47c"
    "gl"
  end
  language "in" do
    sha256 "f4d39aff30b42474150de9d1596f29e66eb8ecb8369c2d010327eb67b8191827"
    "hi-IN"
  end
  language "it" do
    sha256 "20ec1b3c3a4a6e02f8613153ca9024a419bca9cdd5b4529390e389c44f9dd745"
    "it"
  end
  language "ja" do
    sha256 "4811992f700f9b70b1f1d4d2086f741a6791910222427a94d71581cdd5c597f5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "62a7b3fb5726f9470c13234afea2842b105f551f7209ba198c7b4e62a5beb2de"
    "nl"
  end
  language "pl" do
    sha256 "8f9cc1a1380713223cfb861b1db0e23b76e39a92ba34b92468d8a94c44d04b09"
    "pl"
  end
  language "pt-BR" do
    sha256 "7922d90990757ee2c7e4b2461d4f7d0aafe391c85d8757e7396fe8476a831713"
    "pt-BR"
  end
  language "pt" do
    sha256 "da15dfdba5615ff3be000863fd2f087e6898b8feb5be473c5065e88991048932"
    "pt-PT"
  end
  language "ru" do
    sha256 "0a01c68a8a78a9d00136ae5a1eb182e57511ee7847b3e31cd55326037cf5869a"
    "ru"
  end
  language "uk" do
    sha256 "1e877a1b799d266df768e7cf6b24b1e87f880b7b3dc5cc5bfc8ce9284016cac0"
    "uk"
  end
  language "zh-TW" do
    sha256 "2d72dbd97bb667d22545f015e4a8aba547ceee32be5d38f3fd9d085ab492f9bd"
    "zh-TW"
  end
  language "zh" do
    sha256 "f51475501cb6a8385368897ec2a01d634fb5d4f7bc0b2efdfabbf1f6dac7886e"
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
