cask "loom" do
  version "0.65.9"
  sha256 "32a1f6db3790728ba5a9e848480ea8a17f8ba989f5a6cd1a955cf47a34770c89"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
