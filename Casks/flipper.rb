cask "flipper" do
  version "0.103.0"
  sha256 "f2434af86fbc6303b5b4c7ab9464627eb581c95e29dd983279ee2cf4ce24fa04"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
