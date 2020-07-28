cask "loom" do
  version "0.43.2"
  sha256 "457ba90efc9d452f268636d1b35d602f593f97f51452ca67686ba56cd86850ee"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
