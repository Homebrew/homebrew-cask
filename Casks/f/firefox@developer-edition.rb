cask "firefox@developer-edition" do
  version "148.0b15"

  language "ca" do
    sha256 "04309f9b8bda8361a74d128bb46db696f6786d220d905f12526ea4dda8dc32a9"
    "ca"
  end
  language "cs" do
    sha256 "cbadfc96f511faa570909b449486f011c7f27be1c3ff1fe35601e17407ea9c20"
    "cs"
  end
  language "de" do
    sha256 "f6d2335b05bec2312d619ab598a8611f193f5d4333497ea2c3c321e4056ca0a6"
    "de"
  end
  language "en-CA" do
    sha256 "517376ae6fe8a522b979222a7fc0690fbbfbac9c6e8cee9db6378c6ad844a6de"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dcca62374ef9bc33abd2f2e7caececbdb1c4dacfa50e7d611ff0dda7c130cf1e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6a64c461fd1ea15c1f8add22194efd29de36c71b8fc1e5db67deb621373381ed"
    "en-US"
  end
  language "es" do
    sha256 "f5413c13c165e910f180a7997f061a043477e7a3e130d8374dc788878c9f41ac"
    "es-ES"
  end
  language "fr" do
    sha256 "cc4f39e9443ddeba325837d94d651bc9998508b73e8c5f39bd923f01b6dffad9"
    "fr"
  end
  language "it" do
    sha256 "c2b5027834d24e47d0d2a0caecab08215d1b29d00a433c09689423d3c33b6a1b"
    "it"
  end
  language "ja" do
    sha256 "2b28fdba36d4dd923e6bec468dba451649ca329f96c109e3cae851c33d5d3496"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6b04643faf890a4dcc2fb1f776d70a1d0fa7923bd4dc401816198080393a72f9"
    "ko"
  end
  language "nl" do
    sha256 "4fdbdbc0d5c8354d1d9d0007274abd1915874b03bde0f62bc255d9f4e566322f"
    "nl"
  end
  language "pt-BR" do
    sha256 "39a20d3a909004d4127a8c3d1521370644d6f0942a71f773d2e102aa8944ad3b"
    "pt-BR"
  end
  language "ru" do
    sha256 "2a237cd577be33731bc0df27376c47e5c508c50f86d6796aaddd83d8ad15d560"
    "ru"
  end
  language "uk" do
    sha256 "1dcb985216a8a70c95d91975ba882f4a0c3e3d4f51257637e3e27bfcbcafabaa"
    "uk"
  end
  language "zh-TW" do
    sha256 "e14bae69d2e61fb92cba5a188a6356262757b03c8db111b94b300ecbd4dbcf68"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf08e4fc0ba989c9eff4bb5d3a7f915cb9a6d69d861ca17e19bd6cfbcceca513"
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
