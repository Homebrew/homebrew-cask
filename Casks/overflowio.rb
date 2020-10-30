cask "overflowio" do
  version "1.10.1"
  sha256 "2a682fc721e0d8a712f845cde460490b7c353c256e80e3fa4714bffa44f2a683"

  url "https://app-updates.overflow.io/packages/updates/osx_64/271fc3c23d7c9ae00a2c76f4fbdd91288fc65467/Overflow-#{version}.dmg"
  name "Overflow"
  desc "User flows done right"
  homepage "https://overflow.io/"

  app "Overflow.app"
end
