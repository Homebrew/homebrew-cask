cask "extrabar" do
  version "1.5.2"
  sha256 "5e8f4028238dde32a33034440fba95feb4fea375591c3be5c7c18125055c66fb"

  url "https://github.com/AppitStudio/extra-bar-updates/releases/download/v#{version}/ExtraBar.dmg"
  name "ExtraBar"
  desc "Customisable menu bar with shortcuts, quick actions and deep links"
  homepage "https://extrabar.app/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/extra-bar-updates/refs/heads/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "ExtraBar.app"

  uninstall quit: "com.appit.ExtraBar"

  zap trash: [
    "~/Library/Application Support/ExtraBar",
    "~/Library/Caches/com.appit.ExtraBar",
    "~/Library/HTTPStorages/com.appit.ExtraBar",
    "~/Library/Preferences/com.appit.ExtraBar.plist",
  ]
end
