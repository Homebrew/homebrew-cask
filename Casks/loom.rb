cask "loom" do
  version "0.64.3"
  sha256 "32c4e33644425d28a2f2ab6e3192d287dbb1a73d7ea95690e7855131736fbdde"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
