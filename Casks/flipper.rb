cask "flipper" do
  version "0.91.2"
  sha256 "c4f7a4f8f6fca8e8895be337c4fc88f96d195eac985876f45cd76f3e548f16c4"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
