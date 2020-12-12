cask "icestudio" do
  version "0.5.0"
  sha256 "0968026bfb556605b7daa74dbe6bae0859cf3f8e7ab489bdfcf0d4c9ec3627cd"

  url "https://github.com/FPGAwars/icestudio/releases/download/v#{version}/icestudio-#{version}-osx64.dmg",
      verified: "github.com/FPGAwars/icestudio/"
  appcast "https://github.com/FPGAwars/icestudio/releases.atom"
  name "icestudio"
  homepage "https://icestudio.io/"

  app "icestudio.app"
end
