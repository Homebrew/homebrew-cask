cask "rotki" do
  version "1.20.1"
  sha256 "d2ff80ac83a72886c70fa314dd7540c70fd053fc6148bf79f34286c2f8466b5e"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
