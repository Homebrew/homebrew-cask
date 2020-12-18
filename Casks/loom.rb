cask "loom" do
  version "0.63.1"
  sha256 "fa113de088b4d13ea74aa4aba80ded604cfdc7d05c8a5a2d7353b0dcd105238e"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
