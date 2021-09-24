cask "firefox" do
  version "92.0.1"

  language "cs" do
    sha256 "4411f96ce27a5ef6f1f152d37e80a091e3355aa90e8d90409e959375b88ba6ff"
    "cs"
  end
  language "de" do
    sha256 "bf98c196a1a020dfe241698d3a6297d38f93d043fdf2f0893be97f387dd409dc"
    "de"
  end
  language "en-CA" do
    sha256 "d593b8933612e3189ca1aca4e05c26c6386dd6ed743ae29b2afe4d68cdcb1915"
    "en-CA"
  end
  language "en-GB" do
    sha256 "da3e87368b3dae035608cf0f65edb2e785f063fb730bbbcd846fe09ec2b62a2e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f82411a315ab85208c3a19ef63b625c76c312688719e95a15f7f2bb7b229c8eb"
    "en-US"
  end
  language "eo" do
    sha256 "7a9a4bc04888867f0f7028f4cb07b1a26a5478f4413b65fb3d7b3b7bbe45cc36"
    "eo"
  end
  language "es-AR" do
    sha256 "5fc6be313887b438780a04889eca829cf93a6d96bbadd0d65c89789327e181b4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9d0f45e16c17d0f5fec0c1c9e6469f95df83e0fffe07836dd7c0fa9946333f1e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "925dc0e8a1f890a868b071b6a791b9cd3405f57bcf5102f95f2b1b87c4288e0e"
    "es-ES"
  end
  language "fi" do
    sha256 "1f2089781a3db82606c2e61c40e429a59766b7f3d6a0047f075770a5c2838580"
    "fi"
  end
  language "fr" do
    sha256 "f545fffbd10f830c7e26e2b36ffc2dab8b851f2395ae19c726b5f30eaf36b3c8"
    "fr"
  end
  language "gl" do
    sha256 "f80f92dab1cf8dc4a7e0f81ed71bfa51c84747f9892beca97a922aac476fa966"
    "gl"
  end
  language "in" do
    sha256 "e53cb011135b2bb651a36ee2681b5e0ef20df40c220cf31ae21525b9148f9aa3"
    "hi-IN"
  end
  language "it" do
    sha256 "4f979dde1a0a060e8a067d87f7e155589ddb8bae4481c87a2d822ba61f1683ac"
    "it"
  end
  language "ja" do
    sha256 "1f6532ee159b553b9ce09529cedf0aad3a1f8e5dfb5f6cb00728fd07d3e2c4ce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9474f2df8f6836b333316634b303c31ceae37b8197c31cd41846715542dd30de"
    "ko"
  end
  language "nl" do
    sha256 "f7dab8bdcc5705a1b5f210663f133d328ca7076842a997888fa34fa1414d01df"
    "nl"
  end
  language "pl" do
    sha256 "11ab46d558ede1a6e3cc8d345eaf5c140701f2953b39f64ce3f100bfcf9d0a62"
    "pl"
  end
  language "pt-BR" do
    sha256 "b29c00d4b29e4827d8e4fc86dbe6d3e7e00f1282a3aa7f7b9a8223bc5b95edfd"
    "pt-BR"
  end
  language "pt" do
    sha256 "899729c8e7ab18653cb3350fcc98888e89124c7053870a1b3d54cec1df1c2e28"
    "pt-PT"
  end
  language "ru" do
    sha256 "1d530651c7afa3c2c7650881b6c382135aede0d3fa761bf669709324aeacd1e4"
    "ru"
  end
  language "sv" do
    sha256 "6f35f3b67d7b899ced4339c74013cc137e4ed984db351f9ae2073e8df6d5f42c"
    "sv-SE"
  end
  language "tr" do
    sha256 "42dab924a7060360b64fd58a8b868948c57f2110ac35ded7672ea5a6081b9d6e"
    "tr"
  end
  language "uk" do
    sha256 "f08a56b4e41d18233714a8966689bcae71cd46a916308867f81c458f4888fea4"
    "uk"
  end
  language "zh-TW" do
    sha256 "35aa3a9be50d8d54b5c2e623cf0bd55fb2b5e3ed4d33bf4401c696384876d56d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f6c283cb601b36cd2f37e63509bb0cd720171c68a8f87aeb569c34df9305ebc6"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
