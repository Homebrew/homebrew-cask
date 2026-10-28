cask "firefox@beta" do
  version "160.0b2"

  language "cs" do
    sha256 "71e01a4e557fe9eabc7fc2f40e75df69cdfc5a06d05a141e56274f9e3c8e6e54"
    "cs"
  end
  language "de" do
    sha256 "db64ff55d920694f8aef6e08f27e929fda9d76e3f994a76bf3a6835984a8c54e"
    "de"
  end
  language "en-CA" do
    sha256 "cd787159a60fcfe831999d5c21a7a798f84fe8c2ac600c4762afff6f47d33608"
    "en-CA"
  end
  language "en-GB" do
    sha256 "359466ede375a0a20df6e0d6eef5929a86d3d600ad1622a78cc6929b4c0fc4ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a70586831ec27bf6e79ae0b1f9d01fbf895113669581d7ce7f29ec0981c627d"
    "en-US"
  end
  language "es-AR" do
    sha256 "956b2eae9e8b997cee5ecbb6281d49e4b59fff05b4e283d8c60e439ca22c6409"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7acc385e893397e1eb92ea925412b4d6cc602c795895b784719304758a9545f1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9eb03aac584f5e17b23def7ad73ca09fcf345534f7a397ea6291e63f1ebdd74a"
    "es-ES"
  end
  language "fi" do
    sha256 "2d4057f5680baba06b76440106558b0d14309bfe4d87054117c510291c78ffea"
    "fi"
  end
  language "fr" do
    sha256 "1fbfce3cea14af6fa4f8e3cda99a4d6df68711e9098c631df59f379553410c4b"
    "fr"
  end
  language "gl" do
    sha256 "994fb322911e7c80d0582c0a3c7ca8801e0f84cc2940f6d0b5c5972b5d85db5f"
    "gl"
  end
  language "in" do
    sha256 "36f68644c3d867f1ea438ed0d178cbadd0038c9801df8c4e38043ab170c53071"
    "hi-IN"
  end
  language "it" do
    sha256 "c5f8afbcfb6d4c06cd4992a7b14907f58619a3e67756ec282f739598da256ed1"
    "it"
  end
  language "ja" do
    sha256 "4a0bdb046dd4b2b01d9d9b7cf6a18c5fb4f384649e092e0691a3476fe7abd89c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "37555627d922195607f44b2874db68ea59503b50d810b3be498515cfec9a6baa"
    "nl"
  end
  language "pl" do
    sha256 "a4bef849fe4ce8f328f9b58d84db19c59f9b3dfade24565b9adb24a158cda094"
    "pl"
  end
  language "pt-BR" do
    sha256 "0d1dd9436b9532282875e0ed4c1a5b8bce3696906d03b8ea51fd6e124672b94e"
    "pt-BR"
  end
  language "pt" do
    sha256 "afc4601bcda28b4dcbd6ef5758868f863fc5ea9f3246568228689123b86db770"
    "pt-PT"
  end
  language "ru" do
    sha256 "ea335f8304f98677da6436709d874d8786452fadc92bbce5d3a242c261b9a53a"
    "ru"
  end
  language "uk" do
    sha256 "7b869843f5d47596a4b675040d24e2cc0cbc7a4cc0d647a6d2731d0e1cde0b0a"
    "uk"
  end
  language "zh-TW" do
    sha256 "56c06c4c0c63c0b643eea46ff08c9bbea66686022c53846663ca9bd2925e0cbd"
    "zh-TW"
  end
  language "zh" do
    sha256 "c510545cd2b2c1ef93160ec8ddfd7f629ebc88af906af59a74e82ead307fb114"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
