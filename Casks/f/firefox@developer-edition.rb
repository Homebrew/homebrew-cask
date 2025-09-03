cask "firefox@developer-edition" do
  version "143.0b8"

  language "ca" do
    sha256 "04e09bab7e437639d2040aada82de64a5992b23957ece1462f57e4c0d3c189ea"
    "ca"
  end
  language "cs" do
    sha256 "8ebbca059ad0d52ca1f1ac63042b2cddb175301def4809e616efb9969b27855a"
    "cs"
  end
  language "de" do
    sha256 "62fae300d68c66669d27c40c531806b5ca3ed88851c00126fd46e9ecf8748adc"
    "de"
  end
  language "en-CA" do
    sha256 "f61192fd92964e368bf14ad6d5002ce000d209bc03cdded258bb0efda791dfc4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "672c8e0bee140c28aa9a76efa590ce377c013d326313be1ef09f909adcc5a815"
    "en-GB"
  end
  language "en", default: true do
    sha256 "81b33a1115f6b9648e0250a76d5595b8ae5dd911cf12a4980d1eed17bff23e25"
    "en-US"
  end
  language "es" do
    sha256 "a5c368c388b89edd97b7eca537302cf7fa78c1ede73b0ed555857c5a319e483c"
    "es-ES"
  end
  language "fr" do
    sha256 "11291b7426fcd01de1f341c7349011ea694a8cca7acf36e8ec50c61f3d123a55"
    "fr"
  end
  language "it" do
    sha256 "f1225cf012b5b9a3a0cd080c7f68064e04a327edfc3a783b1156f49c9afba35a"
    "it"
  end
  language "ja" do
    sha256 "76a5f948c9e3e1f95711ef70f4e9933aa1d5d80f4ff2bb86b1b5b6b9469f4edb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "434ecafdee8e01de06338596b1d04948a1bbca81bf19e9a8657712c585168119"
    "ko"
  end
  language "nl" do
    sha256 "ad9faaf682396ad1067cad4486b415fc710bb1469fa9a86caac6361cf5902ff2"
    "nl"
  end
  language "pt-BR" do
    sha256 "696ca832d920df5a8e9d623b6f640108daefc959f95eb8c8aceea26edb1a2ba6"
    "pt-BR"
  end
  language "ru" do
    sha256 "f8befeea93ee79c7475f1c4d2ec680ddda3134144e4086ec27af1ee32818c965"
    "ru"
  end
  language "uk" do
    sha256 "017f4af3fbfc39f7440e7f4772dbc4a920f384e03a4b76592373aa54ab997da5"
    "uk"
  end
  language "zh-TW" do
    sha256 "5993135b084afc2c413bc4447b5fdfb9d14fc2afbec5f253cb77ee191472f67a"
    "zh-TW"
  end
  language "zh" do
    sha256 "a280344571a2eb9632ae6649b24ef71072a449182dfa20ca37334bdaedc694cc"
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
