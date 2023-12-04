cask "brightintosh" do
  version "1.4.2"
  sha256 "9f3a18c3ef27078f69d094d89b815d2f0a039f5901db3fa98108c0720d67c813"

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
