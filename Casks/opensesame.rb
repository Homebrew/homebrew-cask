cask "opensesame" do
  version "3.3.11"
  sha256 "b33134a0fe03a15ac2de0cce9dee495fec96ac9da50352af0b906dac54cb9fc0"

  url "https://github.com/open-cogsci/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-x64-1.dmg",
      verified: "github.com/open-cogsci/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    regex(%r{^release[/._-]v?(\d+(?:\.\d+)+)$}i)
  end

  app "OpenSesame.app"
end
