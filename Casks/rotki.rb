cask "rotki" do
  version "1.22.0"
  sha256 "252cc9e56d4e267e2407d4de037d1f6c2d5d6e6558edd8bc7d03398b88c191d4"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
