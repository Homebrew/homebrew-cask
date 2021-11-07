cask "flipper" do
  version "0.118.0"
  sha256 "57cc9e3475b0c5cd4623d53deb34481d8a2250f4a1c85de41010761edc3d625f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
