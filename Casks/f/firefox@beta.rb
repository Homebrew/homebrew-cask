cask "firefox@beta" do
  version "137.0b9"

  language "cs" do
    sha256 "b890b7c9910f631eb49740237075431a5cee36992ec599e6abf8fcb74ea539b8"
    "cs"
  end
  language "de" do
    sha256 "1cabaddd24af8c64abc5464c6a5b804b726872323d3d39677c224d4dd38acb45"
    "de"
  end
  language "en-CA" do
    sha256 "f2d4441b3f66ac84932587dc1efb129e66b9a8e52ee9d744922881576a9a046f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "42950cdcfad3b6508f164be07fdcdc0a06a0eaa0bcfb14fac7248b59eaec6922"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55ac7aa4c6fff6c84cfef94850482f733a83a8f8a61167b76b3e0ef43a5f76ac"
    "en-US"
  end
  language "es-AR" do
    sha256 "7e55ff69916598a997d26fcdd6bb461655be04d7f72499ddabe9127b3555f82c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0d805cc9320ce2215682209fd77d8f57d99d39935426de2f534e90794174489a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9aa2d1242dd8909cad367d2e4cb1b472b875d67cdb15801db20f42dc183f34ba"
    "es-ES"
  end
  language "fi" do
    sha256 "0855327c28916cf8632c7d9b2afcb1b4cebd2dca96087e9a2595a44a70f0bdbe"
    "fi"
  end
  language "fr" do
    sha256 "97480c80455d30a0dd870d81a5cb0d47432c04a353170ea63126cdecbd5e16fc"
    "fr"
  end
  language "gl" do
    sha256 "93aece49858eb77c408ab3f3fbf3a4e6c1e40d85c3c8f6ba11d179354626da08"
    "gl"
  end
  language "in" do
    sha256 "9d0ff42d86aef2a59b60374380904344f103d8397272be94ddc078c19ad3d2a6"
    "hi-IN"
  end
  language "it" do
    sha256 "c9b8a92a0187fabd0ebbeea84ba91f13027613f9220990be9f743f6caa012b40"
    "it"
  end
  language "ja" do
    sha256 "b506bfd6c73b60031b3a166186ddfd2aacff76331c77c3c78d17b03c478f05d1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "79c3636e9355f9036e84a2367aea66eaa8aab73d39756901be66f915d75367c6"
    "nl"
  end
  language "pl" do
    sha256 "f5784295ba7ac57de1c2ce6af34503df704779aec1cbdefc565e284bbc756fa3"
    "pl"
  end
  language "pt-BR" do
    sha256 "f3da622c85d419cc815154c0750fb78b9dc3cd148521cc87c3bb49ef18a3d0ff"
    "pt-BR"
  end
  language "pt" do
    sha256 "1b78411e3cb136cc57ad8c42cdfb8ea2ed784210bbfe64a268ff56583023c674"
    "pt-PT"
  end
  language "ru" do
    sha256 "c91a5b93c7cf6ffed5a7b5c7c2bd45aafceb635adeaa41a9e821a54213e56ed8"
    "ru"
  end
  language "uk" do
    sha256 "253d9bfed1a1050873105df8cdcc62433ae24fde487720ab4d7ae006a96bf002"
    "uk"
  end
  language "zh-TW" do
    sha256 "edafe6bd0e28ee2901bd93682eefbca909d5d28b4ee60e5767b8e226e5e5893f"
    "zh-TW"
  end
  language "zh" do
    sha256 "c0f1b4f7199ee2e0ca6271fd2f0332bc9bea3bed466e63ba6ad228e37fe73f8e"
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
