cask "firefox@developer-edition" do
  version "134.0b2"

  language "ca" do
    sha256 "24980e027af25bb720c3357afe850d1eec80de3445b1cca2229ca456b4286c55"
    "ca"
  end
  language "cs" do
    sha256 "f3e6d870be1201cd3060682c72d7c20b75afc7af58f865e2df8c4ceea9b88c07"
    "cs"
  end
  language "de" do
    sha256 "4296f2246beaa9ca0b63212bf8ecb18f06a1030b202c9f2b1a5557877b9c1cec"
    "de"
  end
  language "en-CA" do
    sha256 "3d1ea1d52f7964f65ce5b72d7954fed3618afb3711c6d19eaaa61fc62b54b00c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63fb3458072eb35cccac4a8dfd22b70cbcb0a5f74668899a14714bbe1aa0f876"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f7ec496202ae3f5ad7c8a5c58db520f5ee07f2b3a40b42a79b69d6ed2dab575c"
    "en-US"
  end
  language "es" do
    sha256 "56c871c0081198b4ade52757d30eb5569dae8fa5c34fba530b84f1126346d839"
    "es-ES"
  end
  language "fr" do
    sha256 "4d7cd945bda86a5e8e6965195ab97c8b23df600cdd90b27d1cf023b8c2a015ab"
    "fr"
  end
  language "it" do
    sha256 "e01417a931f9121110c1e1bb8bb16f9b05b9341bee5d352e6b769990af8d25ad"
    "it"
  end
  language "nl" do
    sha256 "656145d025c3eb12910127967eb9d96830b3f0a3c81b66293fe1e35840e03ce8"
    "nl"
  end
  language "ja" do
    sha256 "cd529042104cbd356fb9ec877820e977dda3fd38eed50dbbeffc2b77b488da3a"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "c8e51784fa60b497e35e4becec936bc9647d87645395d9cca62ab02e892e7b48"
    "pt-BR"
  end
  language "ko" do
    sha256 "45240d61d56bcd7379a5098b009de086411371e4ab28c21099e658add29877bf"
    "ko"
  end
  language "ru" do
    sha256 "9d9e04dbd045e5fe5bb8231d68b9e83505e7dd09f990c1800e58d3adedc053e3"
    "ru"
  end
  language "uk" do
    sha256 "9398550d379f5c8623be85b0c113c157db8371c690451bb1cea58793de07f796"
    "uk"
  end
  language "zh-TW" do
    sha256 "317daa548b848da2849687c6fdd064d6c3f85b24e46821802093bc5460b0c352"
    "zh-TW"
  end
  language "zh" do
    sha256 "c30ee55248a9547cf32d9b748545c9b1a1c99868402f3041200c8853622e0b3c"
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
