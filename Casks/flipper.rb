cask "flipper" do
  version "0.104.0"
  sha256 "8eae5b6c25639cf14d5975f0fcf1076e352a23481060a0818f0b0384106fdbcd"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
