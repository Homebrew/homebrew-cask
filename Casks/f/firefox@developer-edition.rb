cask "firefox@developer-edition" do
  version "135.0b3"

  language "ca" do
    sha256 "62246a05be845116583a66e02d44f4889d02c438a13efff04a3c83f3e936feb5"
    "ca"
  end
  language "cs" do
    sha256 "c58a19950841d2cfe44df566c9e45d95273024a764fe5c685ce7f75bb9876527"
    "cs"
  end
  language "de" do
    sha256 "2ee074d005cb62a02e79d4b1896b4021c0f60fa2aad7f016795bb54d7d7b69d5"
    "de"
  end
  language "en-CA" do
    sha256 "9df6d4b288159313abadcc0a2218015e2c07bc6d780ae7fb175aaa9cc42b3c85"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c2c0a2ba0cfa72f165d4b7addf993bfb3e43cbb9bf0a3d3d1c8c1292e8dffacf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bfd26ec1914d5b69ccb74f6bd95c4995d8ba7fd7a2dbaa21c9b334fa2c1f0c09"
    "en-US"
  end
  language "es" do
    sha256 "7cb0c39553bd9cedb29341d195d446724b810ee7f3cdd6dab7788cf9259659c6"
    "es-ES"
  end
  language "fr" do
    sha256 "f8506f9a732d23c09a5e9e46dcd7c983586bc4587b0b128ccabdc050f776a717"
    "fr"
  end
  language "it" do
    sha256 "beddd6bcab4de37ec474bf5970858c7da037b46eddb90c0a2dc40de2ebf04513"
    "it"
  end
  language "nl" do
    sha256 "08de197ffcdae10ae0c632c50710a30065c8fa7db73f6baecf65d171e9921b94"
    "nl"
  end
  language "ja" do
    sha256 "85019672800513aa9e2c9e5c51c73042a3597ce7024a2c294dd532b98af04611"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "12ab606290387d2d3683ecae1bb7e186af5703b06a08ec1c56b7bbe814f958f0"
    "pt-BR"
  end
  language "ko" do
    sha256 "7d36bdcf9d8941eeacdbb0dd43a281398dffc48c169e2a0f9ef9f1247ca272b5"
    "ko"
  end
  language "ru" do
    sha256 "671db65334d195734f58de9f0a16341dc5f6405fe6988042e6a3fc2655b1ab34"
    "ru"
  end
  language "uk" do
    sha256 "404ca77fa3d610679e08172e2475a2cd411f5757092e58cf8cac8b333ef65281"
    "uk"
  end
  language "zh-TW" do
    sha256 "707a16512b95f0ae349a617da4d8496ee6eb95b400864ed03dbed090edb2c2c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "96c7a662945b90c8f01ebec8f98e2e43938fcb28ad69deeeeb6861f9813b5f6e"
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
