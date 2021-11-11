cask "flipper" do
  version "0.119.0"
  sha256 "669762e8d934ebaaba60de6b92da4f1db3277ca76daa811206ccc7f1e3c54a92"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
