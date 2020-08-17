cask "loom" do
  version "0.47.0"
  sha256 "022caa5c185e33d2fa8ec1f0a66ac36501178eefedcf3a69672b8a9c9343acf2"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
