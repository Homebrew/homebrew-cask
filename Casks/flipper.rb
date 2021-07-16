cask "flipper" do
  version "0.98.0"
  sha256 "b494e273209dc5477c0d9bec4964e7c22f99fc4df7e921b294b62119162cd7a7"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
