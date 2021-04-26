cask "flipper" do
  version "0.86.0"
  sha256 "d5a5dadb270dfbf61ddb527d543d008a62d127130942e12e39c7d894c075044f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
