cask "rotki" do
  version "1.22.2"
  sha256 "44a84378fd449f8a3049285025ffed8a703b9133e2f9d51be89497b6b626bc5e"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
