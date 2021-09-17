cask "flipper" do
  version "0.109.0"
  sha256 "587ea9100767bd269794c8403202b53c5447c120bd41fe5e1603f0428b37c14f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
