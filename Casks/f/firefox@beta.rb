cask "firefox@beta" do
  version "140.0b5"

  language "cs" do
    sha256 "9e4019ec8b118288c4fe42c5a5a687059ca6e0a00fe74d0cea3190de770fc71b"
    "cs"
  end
  language "de" do
    sha256 "54f7f414b090ee21c2fc114c2c160108eb4c96bf4ad27f16ad2d206be0136166"
    "de"
  end
  language "en-CA" do
    sha256 "80c9dc8baae5c3b20505746068ef14c5d5596ed55cd434bc6092273c774f4d01"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e4ac0ab23773e02bccc9a7eabce8855aea580c86708149951c4d3c02cddb643"
    "en-GB"
  end
  language "en", default: true do
    sha256 "795fdcf2076aef760b0276620ad8c0a3357737574e8a5a99bc0c44fdd3c5c90a"
    "en-US"
  end
  language "es-AR" do
    sha256 "e02ecbe6ed24bd0c32a77e93e7699c13cef9f7ae1849717b99d58bd12ad2521f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e8885d29cbd1e114fcfe0b16ddca7fb5b4ba281f8af74668608e6bddf660293e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "53a49ff1b6647664d28531d2e15e860337c28c43fda4aad968be409f98ae8f85"
    "es-ES"
  end
  language "fi" do
    sha256 "c8d25ef49839a78eb779f170546bff8c985c07b9ac426b67eb4fbd55af7e3737"
    "fi"
  end
  language "fr" do
    sha256 "b0cae6fb17dfb954ed23c49cf48be025659a523aa67aaad52967dafb351f2772"
    "fr"
  end
  language "gl" do
    sha256 "6c830bb3212c81b4f081c4b25c8f7d75d995a086eb7e9936fd8366fb3d888002"
    "gl"
  end
  language "in" do
    sha256 "c8f709a5117a4603a341737e8e7214ccc445b4e97e54f03d78e5e50330357c77"
    "hi-IN"
  end
  language "it" do
    sha256 "a74825f3185c256b932fa3f6f8d17aa02aecf5682200ab6fb9197ff98f383269"
    "it"
  end
  language "ja" do
    sha256 "54f45125212cc20c2dd45b936195323dd60e2a0bec398c9edc09c732f88517ad"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9fd523ace6996530963a987e9ca8cb1b54667e632bc0a0558ab518151b395423"
    "nl"
  end
  language "pl" do
    sha256 "02f1435645f99270dfbbc288fb902f1819de68a684ac4de227348f05c3d9d98c"
    "pl"
  end
  language "pt-BR" do
    sha256 "2c99749c7f87f78824982ccf1ff03c92cb49325144f2d38b109cd319a66dd7a5"
    "pt-BR"
  end
  language "pt" do
    sha256 "bb60155d7c1197b5cfe44ce3804be37a809021383af78fdb9f3a1adbb4c6f69b"
    "pt-PT"
  end
  language "ru" do
    sha256 "3fd9c435f1fb14a32a281e31d780099ddc988b7dc464bd6ddd5c6ea8d22f1fb4"
    "ru"
  end
  language "uk" do
    sha256 "db73603d2bc1f3c61401463de6b392cda7f034c78d507bd1af182e6157b26e68"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb7b9e032ec9802d1a4c6b83e41be1c845f03f587378f0c1b4b00238fc82c449"
    "zh-TW"
  end
  language "zh" do
    sha256 "f980bcdd33886c64b51544271767ab8064ac9fbd92d0b6227b55bd9cf9fb00a5"
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
