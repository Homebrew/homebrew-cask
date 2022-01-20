cask "flipper" do
  version "0.129.0"
  sha256 "d4fe0ffdbeaa3a1d85c7b3989896bd594303541e91c328751d592aa6a76dc081"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
