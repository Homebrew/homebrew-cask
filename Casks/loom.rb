cask "loom" do
  version "0.49.1"
  sha256 "d7d74b306178160697a9a5b5685fb553ee3d68ea293e470609d24c8981edbb4e"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
