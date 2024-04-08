cask "brightintosh" do
  version "1.6.1"
  sha256 "bc8b79b34e843dd6edd16fb3595c0f6c0736f639683ff64c200f075f6543f2e1"

  url "https://c.brightintosh.de/updates/BrightIntosh_v#{version}.dmg"
  name "BrightIntosh"
  desc "Utility that allows increased screen brightness"
  homepage "https://www.brightintosh.de/"

  livecheck do
    url "https://c.brightintosh.de/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "BrightIntosh.app"

  zap trash: [
    "~/Library/Application Scripts/de.brightintosh.app",
    "~/Library/Application Scripts/de.brightintosh.launcher",
    "~/Library/Caches/de.brightintosh.app",
    "~/Library/Containers/de.brightintosh.app",
    "~/Library/Containers/de.brightintosh.launcher",
    "~/Library/HTTPStorages/de.brightintosh.app",
  ]
end
