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
      url "https://www.elgato.com/graphql?query=query%20contentJson(%24identifier%3A%5BString%5D%24contentType%3AString%24options%3AContentJsonOptionsInput)%7BcontentJson(identifiers%3A%24identifier%20contentType%3A%24contentType%20options%3A%24options)%7Bidentifier%20entries%7D%7D&operationName=contentJson&variables=%7B%22contentType%22%3A%22downloads%22%2C%22identifier%22%3A%5B%22downloads%22%5D%2C%22options%22%3A%7B%22level%22%3A1%7D%7D&locale=en-US"
      regex(/Game[._-]Capture[._-]HD[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    end

    depends_on macos: ">= :sierra"
  end

  name "Elgato Game Capture HD"
  desc "Elgato video capture and streaming app"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  app "Game Capture HD.app"
end
