cask "rotki" do
  version "1.16.0"
  sha256 "c0d02f9b3a6c47e97edd9adebf0a198ec0798642aa6b3b1e357e407ec9eafa1d"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
