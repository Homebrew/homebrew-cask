cask "rotki" do
  version "1.17.1"
  sha256 "bb0d969db0e3e409a254cba3c46a5294dbe460f028f498acdd6ec00373e4d9cf"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
