cask "firefox@beta" do
  version "154.0b8"

  language "cs" do
    sha256 "c626281e8689cbbf5c998dfb3030e74b6fdaf291b44343d3832c961fe66fd91f"
    "cs"
  end
  language "de" do
    sha256 "0ea3c894edb8b7bf524a9707231d057b64557983a75d4420de1bd1c5d84efd0f"
    "de"
  end
  language "en-CA" do
    sha256 "98ed3e2dbc18644de5027b46c600330729e22f439b3d111742fcdbf96abb5708"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b36e424966baa301f5874bf5eb0f91be62ba8b2d9119bf66a381bd9d5aa3091"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd497c2f48bd5d011c4094de56a9d90dc3e61aafbee0ee154bf9a62f9650c945"
    "en-US"
  end
  language "es-AR" do
    sha256 "25c4a40cea587ca19177ff753ecb261952c7d1da542bb0158e249ea890b1bf4f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4ea8fa948f357e7f8cd6481db9cfdc87075b66aed2d656daefe8bd92f500a7cc"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c6336112f3ffb275071981dabbd698fdf47167d534bb658cea8c597a22282967"
    "es-ES"
  end
  language "fi" do
    sha256 "3346134feb4f2e4c26b155a14323a9f43de47ee37588727f8ba732f56bca084e"
    "fi"
  end
  language "fr" do
    sha256 "311d93ac3019cf76443ae6b482d841333ad91131135b143498bd8ef76429cddf"
    "fr"
  end
  language "gl" do
    sha256 "52497c5a4168f572f7e8e78e4737bd5ba24c26a732ebadf5f11c47f495149aee"
    "gl"
  end
  language "in" do
    sha256 "7b3abefa6e8ef5436c7e1cbb38d8d05f7ce0d3fe3e69b7cb1bdef7dbe9620c13"
    "hi-IN"
  end
  language "it" do
    sha256 "37f61658549489d1e6c0264238b5737cf28123fbf9187da51ef6c40dce8eaf0c"
    "it"
  end
  language "ja" do
    sha256 "d7cd3123e388d33eb0f0e46287e1cdbe81246d7013eeb9d5a9ecece799623f5c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b82b8b3cdca5a87347beef8183158916ec53581b33238596e7b6e1aca9b734fe"
    "nl"
  end
  language "pl" do
    sha256 "43ba0dadd4a46bef15f8c99ba78418873604bb90fce454e8fa257f655a571103"
    "pl"
  end
  language "pt-BR" do
    sha256 "e5129f675108f263b4518eaa847741eed625678286f8791e79f3291327c07e51"
    "pt-BR"
  end
  language "pt" do
    sha256 "0e4fe815ee1bebe984d3397bc3dad23fa690f1f0a3a13b6b5d2d8d6f53d7dce7"
    "pt-PT"
  end
  language "ru" do
    sha256 "5dae725326cb62cc309615e87c7e601b86bac27defc820a5e4dd5d88524e20e0"
    "ru"
  end
  language "uk" do
    sha256 "605e7d7200e27ab9d9a671039874a25e35aef080f0375104873fb4b2e50f3388"
    "uk"
  end
  language "zh-TW" do
    sha256 "33f3cc0435b018686e92873177ac6ed09c3548ac1335d8c4874cd96fdd647379"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e6df501b2e8346680d403179a2436e89e550cc31b1b0c0e66e0dec87fc930e4"
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
