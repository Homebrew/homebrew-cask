cask "firefox@developer-edition" do
  version "132.0b7"

  language "ca" do
    sha256 "d1bcae8c4f0def8bd23d38f4cc4edaa5d822d0808d73ec5864c47063254d21c5"
    "ca"
  end
  language "cs" do
    sha256 "af6ace526e9efbf33256af2af16e3247d7f6179af651ee166b4848e5a50d8a52"
    "cs"
  end
  language "de" do
    sha256 "394d7763910a48e395b640d417db4371c090e1b7ad6d8ae193222dda62103d79"
    "de"
  end
  language "en-CA" do
    sha256 "e7060234fe43543290eb4404a296e3a34da598ec02424a2720e4d28107b61e37"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3340336bb1c01b5f9f375ebb18f5addc023dfb5fbe3e14e99e558ebb4e727ad4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b82d5fc1f064ed35b783290315275690595f8c0e1b41da4f49d5db37a21b8709"
    "en-US"
  end
  language "es" do
    sha256 "d75a0e3e8bfe7090e22a500dfeb126e11373d52ed7fe6fb12e9790bf3f0aa3d7"
    "es-ES"
  end
  language "fr" do
    sha256 "67632f92d8847d5b38dbeeeb8025e630c222cb1591f191c0ad20d9ae6a016cbb"
    "fr"
  end
  language "it" do
    sha256 "47f334605c343dfc11499f5112f2761cf76ae5e84d58f80851c04fc8dee3932e"
    "it"
  end
  language "nl" do
    sha256 "e31043f5a01a277ec6b883190e65fe305fecc2f4417807bd41fa9eda1c3a4b0a"
    "nl"
  end
  language "ja" do
    sha256 "977c9952e8fa2335f4d4e7bd9bcfed7c9e1e7e14ce4b4c673d4d09ad05a1e917"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "5fcb1d54889206257abbc3b12491eb40ea1366ee879d84903b3a088b9dde2fb3"
    "pt-BR"
  end
  language "ko" do
    sha256 "a8e93e48dca7f472127f9c20b067b01e9fa9e8dbc14e1b1180ba85382b947779"
    "ko"
  end
  language "ru" do
    sha256 "862a68373004e65f159b11503982dc53f91ffd9469bf8da39e157673ef066ccf"
    "ru"
  end
  language "uk" do
    sha256 "3441a195ee8327e4fa17c2bec7bcd817ab28ccbe38bf27003f07a571fa605981"
    "uk"
  end
  language "zh-TW" do
    sha256 "a57dd092c1751b8a7415e5693d838b85b18f11b64b971706314b649be96c060b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a05fbe7e2b41aa1add26f005570216a42ffc88f69d3f29ae2f5767e8c6decca2"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
