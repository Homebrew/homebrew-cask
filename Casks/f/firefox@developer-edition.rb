cask "firefox@developer-edition" do
  version "152.0b10"

  language "ca" do
    sha256 "93335903489306baa72550b421377c92d33c0846e90c1ac0d978ebdb5e616a0e"
    "ca"
  end
  language "cs" do
    sha256 "a3d45cdb1fb12746afe6922ed28219ce13c5932fb9de871249a17094b3c5a3f5"
    "cs"
  end
  language "de" do
    sha256 "24c320a0c9ba5b4ff2a4cbcf9f4b12530f727d851475abe7daab20dd9bd0f813"
    "de"
  end
  language "en-CA" do
    sha256 "5b19d9671be1807d5866a6836b5e8dbeda68a3bf82e23d56cc01b2194d91de1c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "38b4cf3380f24fd8e487157cacc58b4fed0f41f1b8dd50f48da01bdd7dfa6196"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e25c76e04008311bd991a3f57852a1e88b4917cb1bf029edee7bc6d69d02aed"
    "en-US"
  end
  language "es" do
    sha256 "8492a03c703bb7d750c94f94555e2b48c5b6ec3f6fd0468ab341aae3edca8b28"
    "es-ES"
  end
  language "fr" do
    sha256 "6d816618c76a7e23256b647b1c7e4c5919ccb746cdc0c2a6f907466214c3c9a2"
    "fr"
  end
  language "it" do
    sha256 "8d175868a2b62a863cff4b0766910d57aa9ef00df70378851a94e14ec9456c76"
    "it"
  end
  language "ja" do
    sha256 "2db9c7e6f5fcc343a1f74ac238cabb7732e3e1a4e939101e479cdd5bf5d0ac78"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e5967490a0551df7ea284795a07eee16473806899ff760c51ff13117c597a5e6"
    "ko"
  end
  language "nl" do
    sha256 "2bd7ed2d6718677893ff6cf6ddd4149dfc7104c7f8d0dcfc6cc9133a1d6d56d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "112dc89d4b4888dbbf265e50dc568b36697ca6dce500a0f094a8c40e2cc582cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "1a273a4d654b219bd96a8275cd8dbfa211dd4cdbf9fccf822fbd2868297d1fca"
    "ru"
  end
  language "uk" do
    sha256 "cf78b411141ba8218513f884ca784060f81eac9f34e7c84d9fc14fe2ff641586"
    "uk"
  end
  language "zh-TW" do
    sha256 "267789fd9c7b7dc5070f667912480c9edb3adf0c3b006505981e7b510651553f"
    "zh-TW"
  end
  language "zh" do
    sha256 "46a40940e00f489f1e3d246da241c6f212b73f46cf8d1778fa22dc6baa8d79db"
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
