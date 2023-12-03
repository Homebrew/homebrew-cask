cask "brightintosh" do
  version "1.4.2"
  sha256 "9f3a18c3ef27078f69d094d89b815d2f0a039f5901db3fa98108c0720d67c813"

  url "https://github.com/niklasr22/BrightIntosh/releases/download/v#{version}/BrightIntosh_v#{version}.dmg",
      verified: "github.com/niklasr22/BrightIntosh/"
  name "BrightIntosh"
  desc "This tool enables the full brightness of your MacBook Pro M1 or newer"
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
