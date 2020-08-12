cask "loom" do
  version "0.46.7"
  sha256 "99eb49231b45ffc6ffb5c4d50d9f86d0abe4bd5890d723dc0af015e276a3349a"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
