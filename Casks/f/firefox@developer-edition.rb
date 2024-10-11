cask "firefox@developer-edition" do
  version "132.0b6"

  language "ca" do
    sha256 "7142a6221263d56f2858b097eba37b1e43c2915afc160bf45b94fcbac83d97d7"
    "ca"
  end
  language "cs" do
    sha256 "f0128b27a28630a0bb1f30b6c90166daff2eb129d717db1ebd78a0066d872ad2"
    "cs"
  end
  language "de" do
    sha256 "52afdfc73cc724c20adf269b7685b67c79d6429434d7f31a6e63e7b3626e70ed"
    "de"
  end
  language "en-CA" do
    sha256 "205a48affb8622ef877b3d8542625e362c32d11072216f6b343e2b15ef502dd0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "667b303608c51ec497bb7b6b9891ff338a5750c18e82f30945aaab03264d96f8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dbb78a0632c2eb77bb6b7893b74d1c944061f88ca9b0ddb6a90c93d9f100b8b1"
    "en-US"
  end
  language "es" do
    sha256 "164ffe6f3a39d16d5e1734f60fa9cdd17ed0ed7539f90cde1e50b0215467a37a"
    "es-ES"
  end
  language "fr" do
    sha256 "209c629a998ea24c3ba417ef16491dbb4c65864bbd1b0745293c0ff9d16551a2"
    "fr"
  end
  language "it" do
    sha256 "7603e2f9392b288ed7a6672ec6ad8b59837f9158ae901ab29d58445789b4304f"
    "it"
  end
  language "nl" do
    sha256 "607a0dbdf0ff6e161cde1633e50eaf24a6d41d5b694086dc4992688342b72532"
    "nl"
  end
  language "ja" do
    sha256 "683ea3bdbc0bdffe1186392f4fb772992f16e3e2b6d031ef9b55a10c0840e593"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "18d9d220bfcaacb620bd79f3f2cf7fb18fd86968d4ffc515ff8f42ce947e30c4"
    "pt-BR"
  end
  language "ko" do
    sha256 "b8f957f69213c80ac03d710b88ff2dac4264209122d359ed04be3e928875413f"
    "ko"
  end
  language "ru" do
    sha256 "7ad470f0ef05a2b6ba6ad0a6c3e898224017797c68553b2ec71bb222a58d340d"
    "ru"
  end
  language "uk" do
    sha256 "e3bd7af66a9f6b68b1ed226eac40b2fb58af2f539e18913853080feb02e12e10"
    "uk"
  end
  language "zh-TW" do
    sha256 "a92011a3e6bc777ea3c18631b4329d3e5c85030d9346cc11a5b5d3d972cf221d"
    "zh-TW"
  end
  language "zh" do
    sha256 "104d3ca8dafa9630118be053f751cc74dd1735248058de4f61ff5f788b251cec"
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
