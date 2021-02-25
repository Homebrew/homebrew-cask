cask "flipper" do
  version "0.77.0"
  sha256 "b3d7f7d33dd2297c19f6afac32ec11ed5120f0733b0437e703433dd695e4c2fe"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
