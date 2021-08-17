cask "rotki" do
  version "1.20.0"
  sha256 "ed60d90a654174004c953a515056ca5b8d02e1b39ddedc82272a868389531da4"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
