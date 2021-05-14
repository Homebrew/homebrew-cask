cask "flipper" do
  version "0.90.0"
  sha256 "2e132aaedfd54f09ec3fb74bfc1d402baf821cc005abe915846ad524e058b600"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
