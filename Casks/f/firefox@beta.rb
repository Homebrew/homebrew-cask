cask "firefox@beta" do
  version "148.0b6"

  language "cs" do
    sha256 "977c1bb1d1e6c6b16f29a9409b6d689487ad4d3b3035313c0d681591f77ba1eb"
    "cs"
  end
  language "de" do
    sha256 "44958712d61ee2977578826202cab03f66b2bef9afd031fa277f43587f53d52e"
    "de"
  end
  language "en-CA" do
    sha256 "d18b86a2fc9f857766cd5fb1b406b129eba3162d114849db274246a1d3c7daea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2bc254f431458c825834bc4dc81715e6cd0873f42c246876ff58a26a08a6892"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f79d044c1b0eb8894e28c0043d3152a102a6f1121a53ff8f5f80478ab6d94fe"
    "en-US"
  end
  language "es-AR" do
    sha256 "53391f423de25ef2ec38169531915d7f977879a1feb1d3d0d962319231e3b4a7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c1724fb90a790807f960cd6fc2fcb317625f0433d025e07694e2f7225ab30a02"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c858e0419801a3fb899d86193f724b9b8b11a576522f68359bcac27457b20dde"
    "es-ES"
  end
  language "fi" do
    sha256 "3255e171bc759636b140fa8d59b950c74bd54cf8e0cc56b6c1424a1b10c2722d"
    "fi"
  end
  language "fr" do
    sha256 "8e42d1c089522592fe11943fb37b73c0effc6459344a37c00d46b8f251d8b49d"
    "fr"
  end
  language "gl" do
    sha256 "af743faff1af2fe3f6f000c5625e4b30f2ee6285795f2f8d7061a047e475f21b"
    "gl"
  end
  language "in" do
    sha256 "8abde866cd7ab19326b15903277c3829a7e150749933f3c48842bad2ec4b70f3"
    "hi-IN"
  end
  language "it" do
    sha256 "251c446bffb11106697bf38f7473dd87baf8c70f719612bba5b73727ea604dd1"
    "it"
  end
  language "ja" do
    sha256 "b9e6bc03c516bb644a99165d9f801c1a51914d7896d2a9d81a3c03f2fde2ff70"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7e86ba10a9bab8fcf8d6cf2cc3c2a366816e731df5a59b77ab9c898e5d59f6c3"
    "nl"
  end
  language "pl" do
    sha256 "92f8cb423a9d1a605b3d9501532dbc12751e928773da5f55e07f58ce5ee2fe5b"
    "pl"
  end
  language "pt-BR" do
    sha256 "1c1d9b1dc15a1ff76d3b7286043e75dab05aaf39251e9961db2829979ce95048"
    "pt-BR"
  end
  language "pt" do
    sha256 "b7f53d5b0dcbcb11cde45d51e0a73deb388afef02bf80435a00f0a79418b002e"
    "pt-PT"
  end
  language "ru" do
    sha256 "4aa602e35660366a9cb0d4337e3fafd7dc3fb7c39e9208ddcabb735be23ee4e7"
    "ru"
  end
  language "uk" do
    sha256 "2bf45cfb6d1e6de341320897111adac7ffeaa13a2d39fac3878b411bd44f7acc"
    "uk"
  end
  language "zh-TW" do
    sha256 "85b46448ca07ee1b9293f9e4ba46b93fe3224714d583d065ad17d1c71c57a6d3"
    "zh-TW"
  end
  language "zh" do
    sha256 "4546e4101a27127693897919de4021455f3eade1374db7356f444526078a7f24"
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
