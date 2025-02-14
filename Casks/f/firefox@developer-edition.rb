cask "firefox@developer-edition" do
  version "136.0b6"

  language "ca" do
    sha256 "f0182d04ab6830c8f4c3e835887c3c31a855c10d16a1da807835e6c2142fc0ee"
    "ca"
  end
  language "cs" do
    sha256 "2541b8ef1b00ab3e79220533a05318612e735c3f93feacc7ba886a663b578556"
    "cs"
  end
  language "de" do
    sha256 "7cb1777b65cc069151c98dc785c3671ee3c9b6036511c51a10ec726cc95273a5"
    "de"
  end
  language "en-CA" do
    sha256 "4ca70bc607ddca6f3f03f36c3416fffba355eeb9acd76ab3d97e27a9680dc24d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba130358f29188f2802504ba167a6b8091de42a174a1877850d32f512ce7a7b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87c369d5e6457f76875a99627d7c1d1ec8d16bdbb2c8e7dc8aa3d02ae4b36802"
    "en-US"
  end
  language "es" do
    sha256 "6cd2b422abd5200eb26a745df0439fad961f9a4dd7f45c5505157ffeaad0c6ee"
    "es-ES"
  end
  language "fr" do
    sha256 "adba736977f67666cda6bb39555c8833b7f6af26427239e96a35104a7b399afb"
    "fr"
  end
  language "it" do
    sha256 "d3f04b052d4b362af3b54c3d581cfae6a3d3ba74636725192c12cfa4fc12bfba"
    "it"
  end
  language "nl" do
    sha256 "8cc36824747a5a4ab6c849c9a7528b89541dc60bc339af0124a715fa8c7932d6"
    "nl"
  end
  language "ja" do
    sha256 "1cc3d2d493f14e2a38d582054b1ddadc273de023b5f0c63fa78dae1cfd9a67fb"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "3694fb8c4479bf36ffcec836bc0052e8eab6cc1eb3814be1e78e621a74866cb4"
    "pt-BR"
  end
  language "ko" do
    sha256 "163bb0cbbd056b0b6fbedf67dbd629f3b2d4ebab5f1b7ebef854993ca83f1421"
    "ko"
  end
  language "ru" do
    sha256 "f2b38c2c3c274d41ede4336075d582b114c06ed7ab9c0072ca27c2f0b77a4f90"
    "ru"
  end
  language "uk" do
    sha256 "c5f36054b28fa9a58b0deae19a6853695238c9f54e003286afd9a11f5018d735"
    "uk"
  end
  language "zh-TW" do
    sha256 "6578cdb64d4ee78ec2d82de5ba0e111a2262c86148a9453216fc00b755d7538d"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cf9ccd652d3a16f0e6e28af7cc6ce437d76096cf89c124e96eec2ee6704eed0"
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
