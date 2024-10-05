cask "firefox@beta" do
  version "132.0b3"

  language "cs" do
    sha256 "c342f668e46762b6d19ab607254e20416430a3eff47ad47995b936b5771c38a9"
    "cs"
  end
  language "de" do
    sha256 "b38687e660e9dd934757b8719f876ac09f18a30cd2b2b637e5c973fc879c1b6d"
    "de"
  end
  language "en-CA" do
    sha256 "17c6d07770461cf569307bde3e5b5bea331487283902fa331274255b87f5c062"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d9231f3af7c000b40b423ee8239b2adc90a1dd69739bd02856bc0406840a0a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "03858fe46410ced98e2c341e1798bf95fd40231e695a087bf6f31206e38370da"
    "en-US"
  end
  language "es-AR" do
    sha256 "29a31b9f4d3a6bc5692963c35f827f83b3d9fdd3bd0d79aaa9030de3118cdd9d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "79b8b0f3b6ff462ce10402b7fdb907ac890c0afee594e091fb4a7ac10efffbe6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "767424d2f5b7ddebee6be3fe0eaad21918ee84ec23f3b792a08f34cb7d41e24a"
    "es-ES"
  end
  language "fi" do
    sha256 "b279df89d0502b38ee9bb1bd6b34814d76dfd44ce9bad6186254b6a17fa9432c"
    "fi"
  end
  language "fr" do
    sha256 "ce035edad2f5621cb5918cd68b083c3ee1354f2f207828ab6bcb136c4bbe0cdc"
    "fr"
  end
  language "gl" do
    sha256 "d7e9e8dea789a8c6d3f0d0f26f0488e88d3b3f5cc0979e0dac35df85214cbd77"
    "gl"
  end
  language "in" do
    sha256 "1bb0e43def5131caf646ba2651b0d69d8271f5a33189fb3b3650381f289c989e"
    "hi-IN"
  end
  language "it" do
    sha256 "f0ff1a51e19b4c3261485cd5450a6d6654c2ee41fdd03fa49a8d632a322f65dd"
    "it"
  end
  language "ja" do
    sha256 "65b2d5436275c6ab2693a7f53cfa47d5afc8b1acdfa226d1ca0a6717601418bc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ac9fa84a13c80984672f6f3e60fb77addaf65ec08a343164af67d123802d7827"
    "nl"
  end
  language "pl" do
    sha256 "4ef0db53dde0fd46ee314f72ee053b0d4bcfebd7c9bf01eac45642b4f2a2654d"
    "pl"
  end
  language "pt-BR" do
    sha256 "cab3c06afef2b933df569919914f94b74e2998bfe059c3f371ad23c4760c8ad9"
    "pt-BR"
  end
  language "pt" do
    sha256 "794e7ad6d96273430a554d9ea9cae4bf7472db8e5b227c98bf5fba1a655137c2"
    "pt-PT"
  end
  language "ru" do
    sha256 "2db50a11d89f21950b18fa46adfb96fbaf0af37c804d1598b5357bb780d53da8"
    "ru"
  end
  language "uk" do
    sha256 "3bf6de0da2ad2b103aa08e52d6b6a5350e7a0edfd5a7b1f09bb41c24e708aedc"
    "uk"
  end
  language "zh-TW" do
    sha256 "664c159c20658d414275e453031beeaccefa9b2f2483e34cdb8a0c3e58f569b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "4364955536f715c482f42ab2d83f56a9c72705f6e7637a0f473a0bc35bef8328"
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
