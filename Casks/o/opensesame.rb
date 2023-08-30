cask "opensesame" do
  version "4.0.5"
  sha256 "6cdc494d68ccc158213c6789ecfa5884cee14e5341bbde195df9846e5faaa1df"

  url "https://github.com/open-cogsci/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py311-macos-x64-1.dmg",
      verified: "github.com/open-cogsci/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenSesame.app"

  zap trash: [
    "~/.opensesame",
    "~/Library/Preferences/com.cogscinl.default.plist",
  ]
end
