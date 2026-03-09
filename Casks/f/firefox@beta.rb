cask "firefox@beta" do
  version "149.0b6"

  language "cs" do
    sha256 "32a8a32a4b67218844bf1b6f13a649c9ecb1508239fa02107edf79a0a9082ef9"
    "cs"
  end
  language "de" do
    sha256 "9b2737b5126ab4cc44464c8b4cf45f6996130202103bf91b5788167efa3232b6"
    "de"
  end
  language "en-CA" do
    sha256 "9ea3dc7aedbaa0f90f203596e7eb0f94ca16277b6d111406b38b485e2c03028d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a67b66f737e82ad1adbfb04411b91654bd72cf419bbafe4d2e9e4000d78d839b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be690a8bb38861766c72adc7d44c4296a153ba02979f92ed8e494fec846f8b5d"
    "en-US"
  end
  language "es-AR" do
    sha256 "587f0c9c433fff3a276e76c35fd3b3c16eafb56a2aa63decfcb913c26e8f05f9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "16c39c297fb6d222ea9bf5a1bf54e565a2f5d691744973c901ef3f5db87298ed"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f4e37ba83869aec45144ba9c7f60b38bcf35b4928c83f02903afb150784bff25"
    "es-ES"
  end
  language "fi" do
    sha256 "83a1cb83d417946dc3d58842e68dcdcb29b1d7f78092da180ec1ecad10f0ad1a"
    "fi"
  end
  language "fr" do
    sha256 "de3d93897b4163cf5657a2bcb84ba5092b509c082ee5646b98f21a81227756c6"
    "fr"
  end
  language "gl" do
    sha256 "4b4b3eca5d5cab9eb83479d19864297e1975909aa0661f6abadc07d08030753e"
    "gl"
  end
  language "in" do
    sha256 "bf5406f806034636e55b911ffd8661f7dec492386d0c89551f0fa053b6743fb0"
    "hi-IN"
  end
  language "it" do
    sha256 "0eaddd856200db9b3ad9600aa5ea5c269fd5e9515a21dcf64eef4e96c629641f"
    "it"
  end
  language "ja" do
    sha256 "1ca57eac5148c95e22bcc730ad576ec45bf34aba4ae017b88219c50dd99c3012"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8e1077c39fc8644c1aec5cb4bba9475b18006c5ce80ebc9f6f5f741faeb0e17c"
    "nl"
  end
  language "pl" do
    sha256 "c08417e3e28a851ef7607b9a071ee12fb752d27f90915b9f29ab7e6fbaa0e6d6"
    "pl"
  end
  language "pt-BR" do
    sha256 "999d752305019c470e8a32dbbbeb2ac85c35660bf732951fe3d778099b7339a7"
    "pt-BR"
  end
  language "pt" do
    sha256 "9805b130b8bb2b2d60fa344cea84ceb156ae5e5c6cea963683b848c060695295"
    "pt-PT"
  end
  language "ru" do
    sha256 "eef72d0f6bce2b0415ac396ce410483554d412bd597420052cec6b18fb880c13"
    "ru"
  end
  language "uk" do
    sha256 "2d42d14a8c9fd9a8ca24aa06ddc78c76073cb0916f613036eba7b9990b68f6e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1178d7d1192aac1c77cf8148ee9434a3fea224f3d4abfeaa8b6c1161c583a52"
    "zh-TW"
  end
  language "zh" do
    sha256 "668ab60542fc8c02639862eec5543a769dc17bd6979236914b2f5d2786308c2c"
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
