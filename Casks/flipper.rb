cask "flipper" do
  version "0.96.1"
  sha256 "6478265a2152d59d5f4ab2316554777616a07c033e0251ea213f939b1f7b6672"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
