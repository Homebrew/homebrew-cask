cask "elgato-game-capture-hd" do
  on_el_capitan :or_older do
    version "2.5.2,1130"
    sha256 "8497802cf07b4cd0e7d8b58610c15cad24fb1f18e230e2138303998f4d8397a6"

    url "https://gc-updates.elgato.com/mac/download.php?build=#{version.csv.second}"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "2.11.14"
    sha256 "e00efce3433cad902400c610f4816fbecce414868a53aec70ef2d8ded9c1ba74"

    url "https://edge.elgato.com/egc/macos/egcm/#{version}/final/Game_Capture_HD_#{version}.zip"

    livecheck do
      url "https://gc-updates.elgato.com/mac/egcm-update#{version.major}-rss/?dbg=0&lang=English"
      strategy :sparkle, &:short_version
    end
  end

  name "Elgato Game Capture HD"
  desc "Elgato video capture and streaming app"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  app "Game Capture HD.app"

  zap trash: [
    "~/Library/Application Support/Game Capture HD",
    "~/Library/Caches/com.elgato.GameCaptureHD",
    "~/Library/Caches/Game Capture HD",
    "~/Library/Logs/elgato.log",
    "~/Library/Preferences/com.elgato.GameCaptureHD.plist*",
  ]
end
