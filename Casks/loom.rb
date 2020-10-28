cask "loom" do
  version "0.54.1"
  sha256 "81d2bcc957ff80e1aff2225c2648985adcb82456497d09d03518b974a71df777"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
