cask "opensesame" do
  version "4.0.1"
  sha256 "8912e2f77d8fa58b2f91958aa7139d733334f7b16f96b75db88f9f5df8a05eec"

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
