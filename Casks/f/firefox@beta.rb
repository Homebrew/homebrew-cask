cask "firefox@beta" do
  version "135.0b4"

  language "cs" do
    sha256 "27951df9a4396513a3d634ec283e18dc5a3c9dc379c22c8cf59f4121e4c622a7"
    "cs"
  end
  language "de" do
    sha256 "ff7c45121c2419f91c3a2f8451c861e9df9330e1eee5aafc2ee845ef60e45d22"
    "de"
  end
  language "en-CA" do
    sha256 "d148a7961b6f81aeaf5c92734cdabf3c0c022db9b7b69cc81fe1dca8209f36a9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "966c9b8136e73986ef2506ea74803bd7bf4248c4e26b6638656d72fdff1b41f0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ba166b68bdaf6ae37532785c0f0f40324eb0af5bec590ef9d44275f436cf50a0"
    "en-US"
  end
  language "es-AR" do
    sha256 "e21f51c083388bc5fea6518085e3d7940817ff9286dfb67eece1fbcc8af79092"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e17a9382fedc24d2b126e2340a6b60a3be72ad31da596ad31924f0d5891478ad"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b77dd37b0e612850c90441827e0fa7090f3c513d5b916d76a4b5cd607b14775a"
    "es-ES"
  end
  language "fi" do
    sha256 "5549388b6ed96d15a869f61056e481078ab1d0fb6a78847acba9c1b8739fb32d"
    "fi"
  end
  language "fr" do
    sha256 "a1443b5870ec069abce4ef44d67b80279fb6c49ae5e6aa4044be367f7f1dd79f"
    "fr"
  end
  language "gl" do
    sha256 "e13d6be1906039e3f329025bf3a4c6bbaf00d302baa068737c85afeb128ec1c2"
    "gl"
  end
  language "in" do
    sha256 "d560f1df1dda38bfeb8784c5b9746e1d43331b584754615f611d886654d41d2c"
    "hi-IN"
  end
  language "it" do
    sha256 "328cf91897f849e82102f89f13b45aefd5939125aaea86470771943ffad28e84"
    "it"
  end
  language "ja" do
    sha256 "d4697f68ea046366a472b864550be7e6f098b78e315c3055d3a0843932632489"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3e17fdc8cde48dfe4aad6bde4a31eb33dd45c7615d352c87aa64e0d5a07af144"
    "nl"
  end
  language "pl" do
    sha256 "e8c86990bb3ea7fb0c4fa7bfc1fab5e8b1f08f3c261fe4dddafe8292b49cb5e8"
    "pl"
  end
  language "pt-BR" do
    sha256 "dc0d3b9d47c204b120b727b704611705aec77208277d8ff72f8e65357411b284"
    "pt-BR"
  end
  language "pt" do
    sha256 "6043311feb362b756243c7f3e476fcde9fb440a47327c4846f5044095cb38267"
    "pt-PT"
  end
  language "ru" do
    sha256 "8376a178bc338fdca0a403d8ca68f43b7aced38cdfa5313240588ef125d16efc"
    "ru"
  end
  language "uk" do
    sha256 "bc5b93ece3ff225622d3c5b8bf3713c5ce221c62c8bed2a459566636a677453e"
    "uk"
  end
  language "zh-TW" do
    sha256 "c91dd6c99aa037d99a3be9c4789a26d71a9f42c7442ddcfc0b5f88c96c28a26c"
    "zh-TW"
  end
  language "zh" do
    sha256 "7128ce1d2ee5d241fbc05ada32efb99c7a4b3b814e2f9bb29a6aa94e05a1f529"
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
