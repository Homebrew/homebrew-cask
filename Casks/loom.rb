cask "loom" do
  version "0.46.6"
  sha256 "77180efc6dc34f864ef6de16c58245c414843114b1a8219d10419800a11a3a6e"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
