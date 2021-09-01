cask "flacon" do
  version "7.0.1"
  sha256 "4c44c4b1235e0edb3ffd563676ee189eb8380a3dbadff4272056607bcff71498"

  url "https://github.com/flacon/flacon/releases/download/v#{version}/Flacon_#{version}.dmg",
      verified: "github.com/flacon/flacon"
  name "flacon"
  desc "Open source audio file encoder"
  homepage "https://flacon.github.io/"

  app "Flacon.app"
end
