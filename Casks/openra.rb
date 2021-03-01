cask "openra" do
  version "20200503"
  sha256 "0240e82003fc46af6b321efd0a5ef7703f4f0293fe75212ef29cad67a705c4fb"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg",
      verified: "github.com/OpenRA/OpenRA/"
  appcast "https://github.com/OpenRA/OpenRA/releases.atom"
  name "OpenRA"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  app "OpenRA - Dune 2000.app"
  app "OpenRA - Red Alert.app"
  app "OpenRA - Tiberian Dawn.app"
end
