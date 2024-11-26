cask "firefox@developer-edition" do
  version "134.0b1"

  language "ca" do
    sha256 "6a20b20a8fd220bdca1b17d7f7f8337290a6a98ddec154268b8f6784a8ecc836"
    "ca"
  end
  language "cs" do
    sha256 "b8781bb4f1f28587ae0ec735b35036f2018a5b70587366099616314084339a9f"
    "cs"
  end
  language "de" do
    sha256 "8cc33e699273e87ab6e278130a00671fc999bfa83dd34a57b31f6ad80b928e21"
    "de"
  end
  language "en-CA" do
    sha256 "b9546ae67c74903b4c9394a2b7d8dbc6919270a718cf4ca73efa51c10dadcaad"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3645e278a4abd27a754845496a9d534d0d0e4bfc2dc877aa1ef760182ff1dafb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fd61d8d3acc48f60d5c42b93422ad5ee27ea851f7c84b97aea371dab887cd96b"
    "en-US"
  end
  language "es" do
    sha256 "caceb62ca9904573aedb25949c3abaf938713d442ef053687d85c53af71b5c6a"
    "es-ES"
  end
  language "fr" do
    sha256 "bc4b7f253e557f49fd998ddd3e521aeb5c76154b0607eb99e7241a93b98e0348"
    "fr"
  end
  language "it" do
    sha256 "fb5a99e218600b80c579a902fcf50ba04222475ad4abefd75c35633e64d3071b"
    "it"
  end
  language "nl" do
    sha256 "77da66144cd489bbf1830ec20040de243dbc47c71ffd9d997c1bfe3b5bd64701"
    "nl"
  end
  language "ja" do
    sha256 "7a07ff39303f2f0d1b342d5769dd701d8589c582050da8f9fcebd6af7b443e29"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "203bd2ff458567350ce70033f9630419802de46b0d1053ac639847d64043838b"
    "pt-BR"
  end
  language "ko" do
    sha256 "594296a7533d6897cb4546644639a833cbc5f354c3742685547715c3586beda2"
    "ko"
  end
  language "ru" do
    sha256 "99857b813564eee75780b79dae94311ad58daebae15378ee1d77956650b30253"
    "ru"
  end
  language "uk" do
    sha256 "e5bf4233e045e92da4f94690ec10c90cfcffff390cdaf7ed1cf002dfa365c68b"
    "uk"
  end
  language "zh-TW" do
    sha256 "c483669c38ab7de120a8fa20af48d5a21cc5f43a3df2ea0eefcead948d7a37ea"
    "zh-TW"
  end
  language "zh" do
    sha256 "52b954badae2475ea4c0fabc274fd13bbf96937d94e3a4ca9832005e1c162099"
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
