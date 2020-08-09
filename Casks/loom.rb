cask "loom" do
  version "0.46.5"
  sha256 "97f9a452d922a54ef88f65f20962db4bb1b2a39dbdd3dae92db693db6fdfe462"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
