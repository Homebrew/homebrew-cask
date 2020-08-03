cask "loom" do
  version "0.46.1"
  sha256 "f6a4fbb8077a1f1f8c37b9196dabb0b6db5df186558ad6c07942b9037e098a09"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
