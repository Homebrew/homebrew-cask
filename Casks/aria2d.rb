cask "aria2d" do
  version "1.3.3,469"
  sha256 "14e649369bac231edb8b4374c0de142297027a5de0e04c80f4dbfcaf634af216"

  url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Aria2D%20#{version.before_comma}.dmg",
      verified: "githubusercontent.com/xjbeta/"
  name "Aria2D"
  desc "Aria2 GUI"
  homepage "https://github.com/xjbeta/Aria2D"

  livecheck do
    url "https://raw.githubusercontent.com/xjbeta/AppUpdaterAppcasts/master/Aria2D/Appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Aria2D.app"
end
