cask "opensesame" do
  version "3.3.4"
  sha256 "5e5eb5de8c6bb0c36ef48001edcbd727824a6fd19ac6b8ed8e54a6677a323f7f"

  # github.com/smathot/OpenSesame/ was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg"
  appcast "https://github.com/smathot/OpenSesame/releases.atom"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  app "opensesame.app"
end
