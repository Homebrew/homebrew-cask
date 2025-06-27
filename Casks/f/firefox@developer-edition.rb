cask "firefox@developer-edition" do
  version "141.0b3"

  language "ca" do
    sha256 "03ee7dd2d199aa0e480d3cd29c2ca294aa09e2808cbb5cca6385c34637b67c6a"
    "ca"
  end
  language "cs" do
    sha256 "86b6a5f02c910eba2479dfc33dca248818899bfda009b53cb615c7d871faa65d"
    "cs"
  end
  language "de" do
    sha256 "54654bfeb2c60ecbfc121ba8b15791e0763ad6d34afd33221c3deeff1faa0e52"
    "de"
  end
  language "en-CA" do
    sha256 "db626e23ee3eaae517c5f9c48cc913184f8c4f571808a49b67fc74441cc2e567"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8634b255365f66f430fb7f8c1637c95ce4d570d249051e60eea047f2572ee988"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55dbf1b60ea3f88f0eb2e4f3495cc4706b5293aad1aec391b99f352f8cdfddc6"
    "en-US"
  end
  language "es" do
    sha256 "1da4e3282464e966b66db538030ab7084f957c769376134dc0aaabde3d30b0e8"
    "es-ES"
  end
  language "fr" do
    sha256 "2813aa96db2853e99aed23bd11420e0fba2c8d42220b753b577f893de410de36"
    "fr"
  end
  language "it" do
    sha256 "306e5e68c052ef7860958c2a133626076041e3160829639c48a3670a1723c26d"
    "it"
  end
  language "ja" do
    sha256 "28d2ad71dfd5a8bcf403d7a3c70ef52d9f31435210f65373be5680959bb3c72c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "af3b6c3e1c2d1422d58f46a5312df5d568107ea78bb06db125a845bd0bf15150"
    "ko"
  end
  language "nl" do
    sha256 "965f5f7bcb89f65780ce769b48923453aa1097917cf497e53687f963e982d593"
    "nl"
  end
  language "pt-BR" do
    sha256 "50130f131fc065719cdaf97888c1071911d2a1a2b8ec241252737105d7e2faf2"
    "pt-BR"
  end
  language "ru" do
    sha256 "f963912222165b59d5b562a88d8a97af2b3fa49e3008c35cce57691dcb489573"
    "ru"
  end
  language "uk" do
    sha256 "e5ae2ba8063bc88b5ba1bc198f7e81a6764a7ae45c2ffe659d34c3aa2c84ac84"
    "uk"
  end
  language "zh-TW" do
    sha256 "b28bcb133ba7530e1781bcb1f9640f9596e394806870c09d0b209003b0e9b0b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "26c8bb84371e9f135c8c0b826ddeefa3ca6664fc0bf5060840f63e4d8e9debc9"
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
