cask "firefox@beta" do
  version "133.0b8"

  language "cs" do
    sha256 "a69db3b46bb0910a7870fb8f39d84fef162668fd8025ccd6003b6a3cebb77253"
    "cs"
  end
  language "de" do
    sha256 "deb720b53dcdc135998ba8175bbdc0f52212387be8f842d83b603ff80ee0351b"
    "de"
  end
  language "en-CA" do
    sha256 "124c36195d67f2802d1b9c53ef0fd420645ed9cdfb4bb4fdd2745a5c48e0a447"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9ade0d0ddad4016080824bb2815329bf90b286d17e0bc6fbd434f3a1c25e44c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c44120ea896a455a0531fdf86f0f2290b7e986d1c77c350f2a20670f972bd903"
    "en-US"
  end
  language "es-AR" do
    sha256 "bffe8991a4aae11c802879ea25a3f59c24d5eb1f0b4a18587e4bcaaf470478cf"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a1884326eba0669a673722f0a01eb888400257bb5477a9914ebc1f941cf5996b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "69eadf386004169de819bff8d60bda80dd06155aee3753f1139b30efd44f2960"
    "es-ES"
  end
  language "fi" do
    sha256 "20b58979d6a7242951a5eb7d4387f453331046b29ce068e555bd1d94a2de5623"
    "fi"
  end
  language "fr" do
    sha256 "7b382d02bcb34ebfbf95ab7c1519bcc7bb40e2ae8b980bd8835098595bc243b6"
    "fr"
  end
  language "gl" do
    sha256 "25dd00d5561421fa7fd82ffc9023f5423a7dae13ca8b25f8694895b5c5f9d16f"
    "gl"
  end
  language "in" do
    sha256 "c977674847e1b837a92fe12696ed5cadf58e5745609bf3ef8f53a4e09043163a"
    "hi-IN"
  end
  language "it" do
    sha256 "724db049eb5dd803dcc3c41c66a889174721d2aa9fd23abde9ccfea73a084811"
    "it"
  end
  language "ja" do
    sha256 "d56b2255c21073a375b24fba5b16c4d0a59349b3a0ae97264a634cc135cfd395"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "51c52251f452ff69f9d27cb47de019b0ed4af145032abcc75594bcd75d00c564"
    "nl"
  end
  language "pl" do
    sha256 "0438f3254e170ed5925cb23d7c382483687be95ad4f97b76ded49ed73943a56c"
    "pl"
  end
  language "pt-BR" do
    sha256 "0d9e77d0cc75caf0f4fc48e992473b82af54b85b9c2b87555c95e7c5320c7e20"
    "pt-BR"
  end
  language "pt" do
    sha256 "dfe61a55baf5aa958771ab3b62e2d36322836e86a39b589ac29e2e51229784bc"
    "pt-PT"
  end
  language "ru" do
    sha256 "32adabeec0a677a5bcc9ce4417592b47f4c29887e4a7a8d4323e948156b11881"
    "ru"
  end
  language "uk" do
    sha256 "a3b63b2e2f3302c7fcf92132b1073dacf9c16289e13ba09c735844d2795336c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f2b3f0f5a18d9acebbb0439ba83ebd7295236b202281ae248fbaf907673404c"
    "zh-TW"
  end
  language "zh" do
    sha256 "2249ce36e252c6f3a50fb94074585a24e19c3e035e596a2c51467b9b73c0b78f"
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
