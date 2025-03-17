cask "firefox@beta" do
  version "137.0b7"

  language "cs" do
    sha256 "945b253285e4513bdc2e998e84f6a0e04265f2ed7e6473ac751c7991212f3c74"
    "cs"
  end
  language "de" do
    sha256 "13a8964b6ef8cd0fb93ef4239f959922c60a21d4afd51976cc7305e8a9ed314e"
    "de"
  end
  language "en-CA" do
    sha256 "f062d23e673cf37af74a68dedf0004624519fd8aaa0c64336838df0b76062d08"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3b2d49466af62390887aebb5e614a3d823ae012807de9160b3b8e275208d186d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3434b27c5ae6b2e5b30b13799b4d6e4bb88e78035c50be559de8a83d47b6f44d"
    "en-US"
  end
  language "es-AR" do
    sha256 "509fd03c84954e39777e8878a034b024f4e42b498b0f65230efd47f8b8b89f55"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b04a1f5cfafd5bdc6ea3339ae12b55aea9572b0d6cc86cf8deb64fc4a53eac2a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e8a229097626606e2efdc67c7e01fc0083225b8674cd782995bd4e9b57f2603a"
    "es-ES"
  end
  language "fi" do
    sha256 "de258eef9b436e82346120ae4cc5385b80397fcd610098186416a4fa8d39380a"
    "fi"
  end
  language "fr" do
    sha256 "ab3344638fb6964ed9d6f7edb3487cb293affe4a2a86bcc13cda89a96815134d"
    "fr"
  end
  language "gl" do
    sha256 "2d81fd114cd5025d5c68310962fbdf6db5ced3670bc60764cdaab0633fec46dd"
    "gl"
  end
  language "in" do
    sha256 "ab274fdeb28a70c0b5e17d85816483ce2e5c1037c18264a2edb7aee45ee21952"
    "hi-IN"
  end
  language "it" do
    sha256 "77f50f541b2db3b1074f05e36699fd43cda12871b858c04ff0cf001a9d6f9951"
    "it"
  end
  language "ja" do
    sha256 "c630baddba0275aa9b66a478010df1162cd0cf9e303fb6254a051e545d02daff"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b7abb530c1541ec6f431151305af25332c225d6d3722eadbe6a8cda3c0466138"
    "nl"
  end
  language "pl" do
    sha256 "14533be710ac8ab33bda7af228a84f82796c2d2ad3b3382c9e1fce03b4d3511a"
    "pl"
  end
  language "pt-BR" do
    sha256 "e9eb9502f7749b54b174aca64ca4850b6c6ce3ab12e2e1d42cff1553e9d66e1b"
    "pt-BR"
  end
  language "pt" do
    sha256 "40c26eb90a1ee4d31b1245e8dbd002d4a377125d0708837e9087e862b5e94eb5"
    "pt-PT"
  end
  language "ru" do
    sha256 "402f0f526e282b26a4a52a30f3dbd6c405379fc20e546635912c6b0e79561a44"
    "ru"
  end
  language "uk" do
    sha256 "db743f771704204e6235ef2adadfda7ded297041c69d01fc3114e8f0826fc7eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "18bb6f47a8fb01d27b0d261620299c1d78d9e26f22ac6849c91b4dd1f704e7b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "637ae3b1eae841abfbfe92e9091cfe22b9206e6645a05097f96b712381738c48"
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
