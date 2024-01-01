cask "brightintosh" do
  version "1.5.0"
  sha256 "8867c10aba75b47cf69a654a8bf9cf4599f1fc1a212f8f4757949c487e8d3c7b"

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
