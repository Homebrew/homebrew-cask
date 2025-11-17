cask "firefox@beta" do
  version "146.0b4"

  language "cs" do
    sha256 "94b69d9d654da82531a118131bc2c57a6885a513b01ee451602910c73be217a7"
    "cs"
  end
  language "de" do
    sha256 "0d38615ea554bad81615cccfe6cec2a73c95b5a6fd51071617190b5ef1f05ec9"
    "de"
  end
  language "en-CA" do
    sha256 "ddee20da48dc458485a517efbe7f7d9a1ae34b710a3e9dedcd03b7bf30b96b74"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0f395495c51d6a9ef2e9a91dfe93fa22eda6ed1782bdc66c83c6f56e914e7c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a777c6cda35fd2d66abd21489edc4f6181de3e10829c7e2ea8e0483e6141ec3d"
    "en-US"
  end
  language "es-AR" do
    sha256 "cb1cfa7061424f428f0f49e2c1c5fbe7f58e372d8074a778f25c306732aba4f1"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ad23b8c8df9b79381307a190288c6e73738f629d9127bc3cb99211902043a862"
    "es-CL"
  end
  language "es-ES" do
    sha256 "5dbb5e5b6c598e8ef2e18d87fbe01695537d2ef364877b3ddaf775f34c3436e0"
    "es-ES"
  end
  language "fi" do
    sha256 "9819473a8c514c0a9015bba53295e3a3b62a055e34f35a9c2640ebe5a721a261"
    "fi"
  end
  language "fr" do
    sha256 "71184ddde04172546a80a4c118ecb9ddfa06693c2436d49559f0dbd39ab69a2d"
    "fr"
  end
  language "gl" do
    sha256 "ebb946d7566e5e691c00f796d8f6b92cc63ef46b76f11d20f6ea7af82e3879db"
    "gl"
  end
  language "in" do
    sha256 "f6b7d2f2f08a06d29bac23b657e2c51a9e0db5888f5e2cafe89dea2c704ebb7a"
    "hi-IN"
  end
  language "it" do
    sha256 "885088f111e395792e8f30e30e39e054d1692fb1ae457c377fb27d69977f8931"
    "it"
  end
  language "ja" do
    sha256 "3d230e5f8847cf65c72f2dfda955c5a74a8a65b1b7f7a3f8f47834007d02a92d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0497e34e45d52f5152f5593c3fc467ef97db8a4b0539425e4091a5e5a54bbacc"
    "nl"
  end
  language "pl" do
    sha256 "abe303ff86d9d546741f12c57ba834dcd8b94019c248d5e6b65da6d5847cc1d2"
    "pl"
  end
  language "pt-BR" do
    sha256 "b16fba207ea5437cbc9ec1bbd3da78d754275cda3b89e5e3357c8fda18325b46"
    "pt-BR"
  end
  language "pt" do
    sha256 "2288e4ba232cb1e7fb971b0531558e9f9c1ad7b4ff2fde3b4e4d0fa8c033f238"
    "pt-PT"
  end
  language "ru" do
    sha256 "f5656ca064ff7e801decba9c8b1d5af9b6c9db7b5048f5c0008904d3343e7b42"
    "ru"
  end
  language "uk" do
    sha256 "629aea38adb545103042964c07d7e324151df1c5c97be74dd0c310ef7a38b223"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c8809cd527042e5f9d16c14556b6cc51aaa82158975c041d2fe0acff9d8d20f"
    "zh-TW"
  end
  language "zh" do
    sha256 "37c1b9597b57729e78a536deca2fb030b225ed9c45feee70016de1cef02b54aa"
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
