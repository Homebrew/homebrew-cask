cask "opensesame" do
  version "3.3.8"
  sha256 "3aa5e50ff728a4f51b444384449ebe02da8061c8424aceb525a064b225b07691"

  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg",
      verified: "github.com/smathot/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  app "opensesame.app"
end
