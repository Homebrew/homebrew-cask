cask "firefox" do
  version "98.0.2"

  language "cs" do
    sha256 "5ad3aff7ee52e263476e7a12bf63b8b14f3a55e20f901d65a5e862239db3fbca"
    "cs"
  end
  language "de" do
    sha256 "11bfd9d42c5cca4e52b6cc94133253fb34272883e2b55e6c78cc0edb246c6c23"
    "de"
  end
  language "en-CA" do
    sha256 "6ef3a5f0fa791fc83d710bebd6b1ad9e4ca6800a130d7042dadfe644c9456d7b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6416411e3bb9f394cfd4bf0bd2237431d141c1ad9c5a7235faf160bdd2bfdbad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "304dfd917c0dcda0313dab1576b520d56de8af7af2e47e7763166d4f5da99851"
    "en-US"
  end
  language "eo" do
    sha256 "40b42a96ad2aafeb344af0aae584ae17494ac92daa0f48df308f286259f50e32"
    "eo"
  end
  language "es-AR" do
    sha256 "75733ea0c01b44dba52426abbd3c0909113cf42f20067c6e2885fb685e75bc54"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6fceeb8f90308156555ae02efdeec5505bf9240c2e868295149c191f1370f1fe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "602735f8fbd04ef17c266371479edcd98c60c87b3743e70b3697f1e62f23cf1e"
    "es-ES"
  end
  language "fi" do
    sha256 "7f8a2ce38a07cf46d3cda5674e481c61ec32d8c3ccd4443afe03388b8d4bbac3"
    "fi"
  end
  language "fr" do
    sha256 "7712cc3d86c7be1f33c20ce77263c96cb60570cec90c424a6d1fcef57c52f842"
    "fr"
  end
  language "gl" do
    sha256 "9ce31d91c73aa65c1fb747cb8a8d679c01c1f04cb1977c531a6b1deefb9dd877"
    "gl"
  end
  language "in" do
    sha256 "d289aae671bea49ff831ffc308127c3bd4815ae7c55b7b5266ee5d545c142469"
    "hi-IN"
  end
  language "it" do
    sha256 "1c9fe2bafc230f749b9abcf9c797e102786bbf4b71781702a6faddb354195249"
    "it"
  end
  language "ja" do
    sha256 "851526e31d94ae49380b07461078276932c017005c1fa2969ac4a2ab65cc08b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9396fd0a0ac89f5574c69f09d895cfad4cb13b46ae082dbbe4fcd5970c80077c"
    "ko"
  end
  language "nl" do
    sha256 "5a9e4df58ff266acf05eca3b5fa14c44e74f8da8f725f9e35880688e30c03fc6"
    "nl"
  end
  language "pl" do
    sha256 "a53b4991817aaca2662d886094bac8cbf789a2bb2afc6859143462ecc8bc3114"
    "pl"
  end
  language "pt-BR" do
    sha256 "33a8139c60d71d5d3239d0e18609369a7e1127e52a67365a38833a2eb3e30e8d"
    "pt-BR"
  end
  language "pt" do
    sha256 "a20c0f52711a4b8e5f3c91778cc57a4a3003b34e0c109016976140cb6a2b32f1"
    "pt-PT"
  end
  language "ru" do
    sha256 "730c27bddf475578d558ce6bc02eb4fcc2c71b1f3a599fad7a1b744cfa35e8ce"
    "ru"
  end
  language "sv" do
    sha256 "b6aa938fcc08b8fb8c0610902a9b3f3695dcda1d24486e23151cca296f00fcd2"
    "sv-SE"
  end
  language "tr" do
    sha256 "f6dd00203b371aaf2e54d72367fa3e1e2e59022d5e1325b08a87dfddecc702fe"
    "tr"
  end
  language "uk" do
    sha256 "7eeaca2902d3545cd4c62c9d397964b087bc771b870e634c98bd197d91368d68"
    "uk"
  end
  language "zh-TW" do
    sha256 "c3e5ce0015bebe1b3c88356dce3dde3ef088a77c822ba4fb51804915f6c32bde"
    "zh-TW"
  end
  language "zh" do
    sha256 "d65e98ac76dc9e199754e1e168f4b3f4e189ff0e242f6f778e001abad7e9b558"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
