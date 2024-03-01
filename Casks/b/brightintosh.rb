cask "brightintosh" do
  version "1.6.0"
  sha256 "903c147ea42fcc10d45300690340e28f88104159d89bb8d8301ea1be34d0bc27"

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
