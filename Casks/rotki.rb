cask "rotki" do
  version "1.21.3"
  sha256 "bfe77790430085deb985abddc7eede4f09350faf783b36c1778e11a7120333a5"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
