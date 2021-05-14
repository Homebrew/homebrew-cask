cask "flipper" do
  version "0.90.1"
  sha256 "f2a3d0cb3f42ac9ee742ea49926bf8dab0959a891f5ec8a1048611511689edac"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
