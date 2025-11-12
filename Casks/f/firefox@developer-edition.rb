cask "firefox@developer-edition" do
  version "146.0b1"

  language "ca" do
    sha256 "290a0601cc938cdf0ccd5d6c7f3a34dbb8c94cb13a3a27272a621946d548e5fa"
    "ca"
  end
  language "cs" do
    sha256 "06c124620871bb6f532c5e7e79bb63a306f667526b7295c3b5727c0b141803f1"
    "cs"
  end
  language "de" do
    sha256 "095076ae07f95271ddc5f7d1c69f1a313b5a1fc9b56e4e0559cbb2b97a6fcaa1"
    "de"
  end
  language "en-CA" do
    sha256 "7f23696643f17959075b76182a73a08efea9524590c2b784651f0df770ebee96"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06a713fa7ac0e5402762c8398dc01112790e54904c1138ee639cd3275ad181e0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb612c23df81216209933973978d5374606e6c43ed7dfe75bae8d422b8e0e291"
    "en-US"
  end
  language "es" do
    sha256 "49213e57ab4680bb19edfaa11fc69a09aa48bd51038a7c1fc7853e9e3e5b30b9"
    "es-ES"
  end
  language "fr" do
    sha256 "85f234242ca631bcf20dd6829be3676f8719889ef4bc0461f953b1a703d85e0b"
    "fr"
  end
  language "it" do
    sha256 "090bf3e23d8e9b55707c622443c7842d163ef11722448992091586fbd5976432"
    "it"
  end
  language "ja" do
    sha256 "afd0d3bf5e4f8a13d1704c7e5fb74a541d4fe70ca00606efdca85e9b5322de4c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "26e883ab69ac672fe9eb19f52f877ef1be65a4a2bb619912ed9cdccecd8a5de6"
    "ko"
  end
  language "nl" do
    sha256 "abdc95a9d04e0fa69386beecf83003d3e00a9654f596cbf576007f59d2bbdb1c"
    "nl"
  end
  language "pt-BR" do
    sha256 "8750bbad24bff0a0bc1cb5fade03464a02706d908318742f09e594e65f65ca5f"
    "pt-BR"
  end
  language "ru" do
    sha256 "47eba7aab435708576b8043476ab62e5813efa6150f4bd1c0b03c50f5ad5c898"
    "ru"
  end
  language "uk" do
    sha256 "635b5beb36d65165acdd9ff475c1c0c5230984e950e61b866a97d5a3e5d5430c"
    "uk"
  end
  language "zh-TW" do
    sha256 "7df1faf5477baeb22e2d3359bae5adbc0922960136e53d51d3ef46adffdd6fdd"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa4dd362cf867bc9c7ccd284013d79ba5885a8a5e63d9fde8e1708348aa78d4c"
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
