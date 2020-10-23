cask "loom" do
  version "0.54.0"
  sha256 "5b719f885771c34f2223c77487954e57d2dd4de0777a75e057e7be00831f02f8"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
