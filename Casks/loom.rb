cask "loom" do
  version "0.50.4"
  sha256 "f7ee7091b6ef665192655be729b9385c9292ab8759a71182855955d0b133997c"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
