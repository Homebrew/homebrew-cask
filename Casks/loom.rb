cask "loom" do
  version "0.49.6"
  sha256 "ce5a356ef7dbdead56b4a819e82b7b9bd50cd544cfb8c8a3673ea81851e33b6b"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
