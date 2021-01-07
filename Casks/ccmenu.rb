cask "ccmenu" do
  version "14.0"
  sha256 "6e8c88c0de1db8206274109011db37b7ce53d63fdbed11de0057f967d7959976"

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip",
      verified: "github.com/erikdoe/ccmenu/"
  name "CCMenu"
  desc "Application to monitor continuous integration servers"
  homepage "http://ccmenu.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CCMenu.app"
end
