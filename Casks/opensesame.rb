cask "opensesame" do
  version "3.3.14"
  sha256 "36f7dfc092a8a6531ca4b94f979a581ffbeb83bc007cb8cf0d9dd3aa280a6ff3"

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
