cask "rotki" do
  version "1.21.0"
  sha256 "e8f204f76c7dd3002f3adb68f7985e1e57f5b28313d33a1d432a1fe746c367cb"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
