cask "loom" do
  version "0.49.0"
  sha256 "2964cfd53e0c1e6a23071aa6bd44dbb5117ee13629fd64dd099b8b9331ef556d"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
