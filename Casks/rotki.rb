cask "rotki" do
  version "1.16.2"
  sha256 "eb5d7b77bf001cdf9713a6f082fe7af16e739e41cc372e9df8383dc27fb4775c"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
