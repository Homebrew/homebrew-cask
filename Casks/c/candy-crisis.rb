cask "candy-crisis" do
  version "3.0.0"
  sha256 "4c3359332d950e2836f9279c8ed1cb32e3c271e5dccb182134364976b4ef2095"

  url "https://github.com/jorio/CandyCrisis/releases/download/v#{version}/CandyCrisis-#{version}-mac.dmg",
      verified: "github.com/jorio/CandyCrisis/"
  name "Candy Crisis"
  desc "Tile matching puzzle/action game"
  homepage "https://candycrisis.sourceforge.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Candy Crisis.app"

  zap trash: [
    "~/Library/Application Support/CandyCrisis",
    "~/Library/Containers/com.cc.Candy-Crisis",
    "~/Library/Saved Application State/io.jor.candycrisis.savedState",
  ]
end
