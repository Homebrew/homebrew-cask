cask "firefox@developer-edition" do
  version "135.0b7"

  language "ca" do
    sha256 "7a00b72200f72697b6755c859b7d631ada711495dac2fff41bb8af0dc80f8f45"
    "ca"
  end
  language "cs" do
    sha256 "bdcf7d28989f9ae6ab7be82e4d682a2cb3c6667eb8adf007510cf27f0280103e"
    "cs"
  end
  language "de" do
    sha256 "cc44438d173a5875e823990617de7571e0146eef557631402886e3ec4fe2bbe5"
    "de"
  end
  language "en-CA" do
    sha256 "cf2467ba076a1bca04a765c95454eb3177872e22bc127067afac5c05c209a5e2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2dfe4f5ab82ad6ddae1eec2671182526719a8c764f1b4fd47038ecac5f1e2429"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44e1eeb659ccef9f7e44456b91cb6316bcdafd82418e6e5993ba26f5fb5649fb"
    "en-US"
  end
  language "es" do
    sha256 "ae2d9e37087078fa4925e3def9d0d1262d940b562f592f9593dc7162743e3760"
    "es-ES"
  end
  language "fr" do
    sha256 "5c446a0d611674e4fc7ae1041346114273f0be970ba676dfa61b612d075f5d8f"
    "fr"
  end
  language "it" do
    sha256 "ae78c8c51f82093836f90c87eed69b75dc3fc60a73f0c656b1ad12121423b131"
    "it"
  end
  language "nl" do
    sha256 "d84ed35e046836b25fdba40b5b8e0112e3ef9cb9ec35c0d2a67637452dd5dd7d"
    "nl"
  end
  language "ja" do
    sha256 "b5f1ddfc0988501fb4f12d99c168d6a5f51e422064217854c8d7bbe85a20206c"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "ccfd90f25193cad2ff0eccee51abceba7773fae86596079780551a0da28cfedd"
    "pt-BR"
  end
  language "ko" do
    sha256 "f346ba06961158cb9145572a9e9f12a9c78dff0f4e7bd2d781d555f32b90f7cf"
    "ko"
  end
  language "ru" do
    sha256 "93a795399b5e14deb5af3ab23ad620651037158adf8116f5a4ddca08a4e7b906"
    "ru"
  end
  language "uk" do
    sha256 "eaaa1d3bba74c2c8b28994354d42eab11c023d4aa3466f585a8af69b078eb385"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f4e1cdda8c7efd9f53ec960c438deee6691d3491b707c2e7ade4eba75b7c5bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "7f7cb4dbc4137bdfb3b9d1ad9c77005f08df83873fe492e6935d279f1898dfec"
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
