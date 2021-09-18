cask "flipper" do
  version "0.110.0"
  sha256 "8c4c399fe0502e1fd6fdf95370b5623f930f54f24b4de20e5ce7795343147451"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
