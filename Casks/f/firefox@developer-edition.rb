cask "firefox@developer-edition" do
  version "140.0b8"

  language "ca" do
    sha256 "8c8048b786b87e414d3f789a9ed9c5af23fe90580bcea97915f901a7a686eb38"
    "ca"
  end
  language "cs" do
    sha256 "15a68c67dde2aade339cb489e3915d6be06b770e17afd369da70309ddd075fff"
    "cs"
  end
  language "de" do
    sha256 "e39e1121bba7bedac4214a406fa72638d3549009bcb678676f890ccc0afe7897"
    "de"
  end
  language "en-CA" do
    sha256 "e2e71d63d652c249e0d24cb40311a5bd5d66080faed71bb5ce74c3ea157b70cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "99bc088b25ac19a7d0ad28a72238fb8235aa11f780042017a0478e557b30bfda"
    "en-GB"
  end
  language "en", default: true do
    sha256 "21749858560d3523d4b381aaa05a6c2f9f3e0c4af54891815ec60681fbd4e75f"
    "en-US"
  end
  language "es" do
    sha256 "19ced25363d0c317f28ad5f7d191e809b8ae45f0741c5a99ac4dd86f7ee2ae74"
    "es-ES"
  end
  language "fr" do
    sha256 "c737e46d64114ce1f57d784ad0efdeb8763e17101c01ee7b94e5f036b3431070"
    "fr"
  end
  language "it" do
    sha256 "e0f1634d2c642875ab26fd0409a3f8c415a26096f9efd4afb2899119698cb750"
    "it"
  end
  language "ja" do
    sha256 "f6ade9bda23bbdf8d7bd5c59936a0e3fd080628acc01cfbc86a7908837c3dc0f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9a813cf5629d7c9552be084be04ddca2218ca282c41997982ead4632a116bb97"
    "ko"
  end
  language "nl" do
    sha256 "14e37c623216a0b55fc39c2696bdabbb150f5cab943e68c1fcd3cac6b2ea6dad"
    "nl"
  end
  language "pt-BR" do
    sha256 "937687d5590c00fab7dcf2502698769f990527cd0a95db74556c5b87e449b6d4"
    "pt-BR"
  end
  language "ru" do
    sha256 "868b40e83fe35dadc223413d63b81d463a85451d131f998af66367013c949eb9"
    "ru"
  end
  language "uk" do
    sha256 "0b87be42f527d9544bef03eb7bb9b054895d251dc4fa29d809e4b774afd6f9a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "a6a569326d0b6edf5b834b813dadc89bd77dc811a02421fc50f266ec90b895b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7d836944dad7483899a301da2a4000f589cf37cad1d889d046e871ca472d1f4"
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
