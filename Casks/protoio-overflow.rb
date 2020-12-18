cask "protoio-overflow" do
  version "1.10.1"
  sha256 "2a682fc721e0d8a712f845cde460490b7c353c256e80e3fa4714bffa44f2a683"

  url "https://app-updates.overflow.io/packages/updates/osx_64/271fc3c23d7c9ae00a2c76f4fbdd91288fc65467/Overflow-#{version}.dmg"
  appcast "https://prod-overflow-release-server.s3.amazonaws.com/packages/updates/osx_64/271fc3c23d7c9ae00a2c76f4fbdd91288fc65467/latest-mac.yml"
  name "Overflow"
  desc "Create interactive user flow diagrams"
  homepage "https://overflow.io/"

  app "Overflow.app"

  zap trash: [
    "~/Library/Preferences/io.overflow.mac.app.plist",
    "~/Library/Application Support/overflow",
  ]
end
