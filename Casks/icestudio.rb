cask "icestudio" do
  version "0.7.0"
  sha256 "7d2e25fd7256b143a9807ac96123731f459600d0afdd2024ee1f76ff8f7bc790"

  url "https://github.com/FPGAwars/icestudio/releases/download/v#{version}/icestudio-#{version}-osx64.dmg",
      verified: "github.com/FPGAwars/icestudio/"
  name "icestudio"
  homepage "https://icestudio.io/"

  app "icestudio.app"
end
