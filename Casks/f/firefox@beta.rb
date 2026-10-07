cask "firefox@beta" do
  version "158.0b5"

  language "cs" do
    sha256 "def57fbee9ef4658ca88002ec49caf593ab337ec0189338a4dd9238ff9c0712f"
    "cs"
  end
  language "de" do
    sha256 "1991985bc2f698f1cf266a92377d5bc2933d1471ae2b9e11be8e80f88eede0ed"
    "de"
  end
  language "en-CA" do
    sha256 "30a8d49b3b2b2029f514cf853399201eadaf59fac6bc380f47da6a133c0d2546"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b4854233052f8e8ed6bcd22fe85a3c6e54d996fc1cd6ae7ada403372a8494e9d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b087cdafd0b68d68d27dbef215e201fe72653d004e20ac2f0286c424b9033cf"
    "en-US"
  end
  language "es-AR" do
    sha256 "d1820e7fa77ee3c90c592f5c75044adf16064a22dcb8ad416e65e798684ef90b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4e08a980e59bef53079b6f9e84f7538874b3f2afe48e182de0b2916f229ab861"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0b888ec6ed87be3c9f96acf5b72acbff60753ded544798546e32745c69d5072f"
    "es-ES"
  end
  language "fi" do
    sha256 "fee27bc356b8fdf65c5953321c3ded7533ee9b474c3063229e1b54a56da9b9c6"
    "fi"
  end
  language "fr" do
    sha256 "b64c1269022d5e26a9a202b1d3b68a71d341f8248c03e78c2364f8969d825378"
    "fr"
  end
  language "gl" do
    sha256 "c31f719f3dedf4f9fcee60e1ca79577a03839fbfa969c0870842fec4fd4b99ed"
    "gl"
  end
  language "in" do
    sha256 "cf481e9b08192a94df49a0703de835092cd4fddf8c963502660e70452f85e779"
    "hi-IN"
  end
  language "it" do
    sha256 "54c436a39a9e1bae868ea1ed293c478f559397eb912c2f4968e1587034d1c727"
    "it"
  end
  language "ja" do
    sha256 "55a6da3f5d35d6ba0c66a7f0366ac52a7c0f39ab474e0bd10cf9988db92890e6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b0988fd812b9710551ff503452359861026ffb40455e0e8993a23bd074d007a4"
    "nl"
  end
  language "pl" do
    sha256 "e6ab692aba4e925bf435c4ac15211d10b4425addafbbc5bd288e8608c1e94578"
    "pl"
  end
  language "pt-BR" do
    sha256 "664a32afab7f4ef1e10db7588b3a646fb757c88ae85a39e552824a56232173f8"
    "pt-BR"
  end
  language "pt" do
    sha256 "141bad7c2878d99d4a692775587fd5395c4a238b59ff42335e19a2738ad1c4a5"
    "pt-PT"
  end
  language "ru" do
    sha256 "65af4abf571113d7c6b83c43b3ca7c96eb2eaf52de8f89c7f8cb4826823a1346"
    "ru"
  end
  language "uk" do
    sha256 "b2155bae2dd0d427a1886acb04da192750f2079e51c7763db16c98bd2d4ac31f"
    "uk"
  end
  language "zh-TW" do
    sha256 "022f2a7f7d38b4b68a273556c04049132587cb7fd6a5497e32fe360fee26ad4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "b63015ea0f2f8da960ea2c45651f544c3250ba84ce6a9252ca00e065b3d9c2d7"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
