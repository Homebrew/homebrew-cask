cask "opensesame" do
  version "3.3.9"
  sha256 "6891a59b25f7ae340bdba53e55faec71e00cf8a67897b496a271ac3a3134ae06"

  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg",
      verified: "github.com/smathot/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    regex(%r{^release[/._-]v?(\d+(?:\.\d+)+)$}i)
  end

  app "opensesame.app"
end
