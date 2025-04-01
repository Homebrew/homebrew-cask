cask "protoio-overflow" do
  version "3.5.405"
  sha256 "22148f2248a47d4923e85b606130e13e6340bc9b61649ad583eda65182163cce"

  url "https://app-updates.overflow.io/packages/updates/osx_64/d37e5a83f1842cf59085310d43389b17dc73069b/Overflow-#{version}.dmg"
  name "Overflow"
  desc "Create interactive user flow diagrams"
  homepage "https://overflow.io/"

  livecheck do
    url "https://prod-overflow-release-server.s3.amazonaws.com/packages/updates/osx_64/d37e5a83f1842cf59085310d43389b17dc73069b/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Overflow.app"

  zap trash: [
    "~/Library/Application Support/overflow",
    "~/Library/Preferences/io.overflow.mac.app.plist",
  ]
end
