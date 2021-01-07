cask "opensesame" do
  version "3.3.6"
  sha256 "4547ff51494b4dabf4d34ed9d6b0ac13a3cc9b39b61bc2adaca98e3638e7300f"

  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-2.dmg",
      verified: "github.com/smathot/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    strategy :git
  end

  app "opensesame.app"
end
