cask "rotki" do
  version "1.21.2"
  sha256 "65c3a3ed9800cf6aabcf5d92cc7a480f1c98c7fe0caf29666065d1d1011abcc8"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
