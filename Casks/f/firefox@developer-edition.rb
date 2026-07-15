cask "firefox@developer-edition" do
  version "153.0b13"

  language "ca" do
    sha256 "cfabef57085ce30ee6782686f503efe9ff22f2f4cf5c1289faaa631a53a2da23"
    "ca"
  end
  language "cs" do
    sha256 "122ef53300046d3ded730fa910061b034d4346973bc0a3f38ad5df4cc0a301e3"
    "cs"
  end
  language "de" do
    sha256 "93177ba8c56d6f823b7b19d029096be5e44a46744a2c0d33041948dd0038556c"
    "de"
  end
  language "en-CA" do
    sha256 "e74df7f69eff0868c210e40b53582e23f48c7d25ee6b6cc9ff49a94513add6ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eccf9b3b8fc1b3d35d34c1bca2abee5d7dbfb8aa0ae4549868158f7094a0021a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d30d4c74a97ed2e0fea2956006a1e0d589a856061291eb8bbde95378cc806fd"
    "en-US"
  end
  language "es" do
    sha256 "af4664fd48a049697f16b63efadcca793c67edcb57ae0e9c6632bec99e1191bb"
    "es-ES"
  end
  language "fr" do
    sha256 "e0028ba8bd7e01ffaadf45149a82334863d231498945b9dc301a3c0af95115ad"
    "fr"
  end
  language "it" do
    sha256 "b1252c01a0e6b6804122c5ad3a5b7c85ae0d99202b8c6b4c97da682b4b8d073f"
    "it"
  end
  language "ja" do
    sha256 "01b90996815105b03f89d2edbc1ac7b0eccac4c71edc673b7c29b5c016e2ac65"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "07f8f24806fd32fcdb8b2b87691a042476d1673a0eb332e4844cf09a0aee1165"
    "ko"
  end
  language "nl" do
    sha256 "5b070aeeaf823bc8480bcf944184209602425f808a56a05cb7a80a7ee25bc55c"
    "nl"
  end
  language "pt-BR" do
    sha256 "09900bdc92b6a275a1419b80648be7f150aca0642a5c730b00b4ed2036664f03"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a3b4618cca5fee96e1bb3fe086533e437753b94f3e6f2457c7fd28a29d9822d"
    "ru"
  end
  language "uk" do
    sha256 "72941afc5707bd60177724f7ee17e1a0e07526e58c85f29210556cfa67df6758"
    "uk"
  end
  language "zh-TW" do
    sha256 "f8c32282fc1fb7ccd539dab191c7422dc4146fd468c6988199f86c2b5ed793c1"
    "zh-TW"
  end
  language "zh" do
    sha256 "30e9798ddcad1cf410fe83bc074c144d45fb7a7479cda362bb40e1e2edc960f3"
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
  depends_on :macos

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
