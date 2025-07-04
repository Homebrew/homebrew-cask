cask "firefox@beta" do
  version "141.0b6"

  language "cs" do
    sha256 "14506ef4d6d851311ff01a288ee9fbae4186ba03b36f7a8e79635419aa347197"
    "cs"
  end
  language "de" do
    sha256 "fb0e2d1b27c505c6bd9220c49fecf9c0065d423b70f43bc0c4f8d0414cd8689d"
    "de"
  end
  language "en-CA" do
    sha256 "4c2327c3bc0dc05831c9dd107bd4cbce8d8e27ca768f3620745300e636109a71"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ec72d63c36f27d4ac29cf97ea651f31e51659fab8afc2b8e1a1679ca81841483"
    "en-GB"
  end
  language "en", default: true do
    sha256 "26ff8ba6534ee8c15a7b55fc4a38bde1e72c515c878b0abbe87b4dd8993f81db"
    "en-US"
  end
  language "es-AR" do
    sha256 "7893147efc38df69f39a230264ae1f6ecf29060fdc7b7dcad3bb712bbd23779c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "793a7a5956598b3f05e8bbee7b6206ed7e56ee836b391c3311905d298c710ccd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "97679a972a3530592001740c1abddca2918fabafecf06d98c5a3cfce5d4d2c7a"
    "es-ES"
  end
  language "fi" do
    sha256 "224cf85e942d8228fe1e89aa59721a78f4036719b6ef801b105be4f916d0ed7f"
    "fi"
  end
  language "fr" do
    sha256 "0bd3c405bd4fbc214fb02e2c05ad27347facd1c90159145f9353bceb6bd2f5e5"
    "fr"
  end
  language "gl" do
    sha256 "24fb607be5eb2a5d5d0592787c399ad55b6c8933c14726fe0f5c242eaac4aacf"
    "gl"
  end
  language "in" do
    sha256 "ad19190abdb81d1eca8f3be2dda5b90ccc349b09f5c1f8a7ca1944ba2b89314d"
    "hi-IN"
  end
  language "it" do
    sha256 "6d4eef066481a1af13432c14dacbf6947aa7d75745f282f9511f639beaefabf8"
    "it"
  end
  language "ja" do
    sha256 "8b28caf5d3c3f0602e2f73614a6f2b7a5ec43504b8033a0cc8c228da5fdac64d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "743dc840e1e79d14add7f98db64e26f727c82f0fcddd2b20e6d32bc4d0af9bee"
    "nl"
  end
  language "pl" do
    sha256 "7e28d7ba11c15242c2ce631903ce486d2cad049dfa249768ce60f5c6b64c784f"
    "pl"
  end
  language "pt-BR" do
    sha256 "53d0fc0863d2fdeebe473162ad4359d3584e088280174490a9b3b60e278eee00"
    "pt-BR"
  end
  language "pt" do
    sha256 "21e681d548fe322a819a5b30db91191f9db8b44d27a42606f6d6d1c6e9e07c08"
    "pt-PT"
  end
  language "ru" do
    sha256 "b3fcd8286d798a9b94b75dc4cedf72a7a4e7459fe2d85193d298fe6dff0c9eec"
    "ru"
  end
  language "uk" do
    sha256 "d1f4be86a94e3ef5b6eff12e8f5b5ba10647d8708f2be8229bfee53ba324c509"
    "uk"
  end
  language "zh-TW" do
    sha256 "ddd37b5aee179eb9ab22f498e384d0a305d722ed0247916ad518667fd38caaea"
    "zh-TW"
  end
  language "zh" do
    sha256 "9544132589cec55e1367eaa57c5489e530b2ffb63538434bf0482fc1e30b6711"
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
