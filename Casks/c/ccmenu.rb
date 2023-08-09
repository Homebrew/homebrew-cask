cask "ccmenu" do
  version "15.0"
  sha256 "4ee3c5f65828c30c5cbe147064396d387a175042601076adf12b6c1a99792c1d"

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip",
      verified: "github.com/erikdoe/ccmenu/"
  name "CCMenu"
  desc "Application to monitor continuous integration servers"
  homepage "https://ccmenu.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CCMenu.app"

  zap trash: [
    "~/Library/Application Scripts/net.sourceforge.cruisecontrol.CCMenu",
    "~/Library/Containers/net.sourceforge.cruisecontrol.CCMenu",
  ]
end
