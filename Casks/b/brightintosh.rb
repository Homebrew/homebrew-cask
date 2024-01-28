cask "brightintosh" do
  version "1.5.1"
  sha256 "6e38c0d5340c371cb096c6f400af986bf07157786327f95ded8bd942f6b544d8"

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
