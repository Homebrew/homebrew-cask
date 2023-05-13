cask "elgato-game-capture-hd" do
  on_el_capitan :or_older do
    version "2.9.2,1327"
    sha256 "9bcf01399719755034c964549a6a3af38932e7eaf03febc8b3742306505ca8a9"

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
      url "https://gc-updates.elgato.com/mac/egcm-update2-rss/?lang=English"
      regex(/[_-]v?(\d+(?:\.\d+)+)\D+?$/i)
      strategy :sparkle do |item, regex|
        item.url[regex, 1]
      end
    end

    depends_on macos: ">= :sierra"
  end

  name "Game Capture HD"
  desc "Elgato video capture/streaming app"
  homepage "https://www.elgato.com/en/gaming/downloads/"

  app "Game Capture HD.app"
end
