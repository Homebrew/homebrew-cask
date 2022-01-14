cask "flipper" do
  version "0.128.4"
  sha256 "b3a47f90f6a0a29902c38a6c7ca7c566d1f25e89c76c5cc364bd5317ad44bdd7"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
