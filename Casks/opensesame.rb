cask "opensesame" do
  version "3.3.12"
  sha256 "ccf7635b9c7c4ff5fad437195189ae16559173b1030a015b7d9602ce949b56d4"

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
