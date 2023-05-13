cask "spacelauncher" do
  version "2.0.10"
  sha256 :no_check

  url "https://spacelauncherapp.com/download/SpaceLauncher.zip"
  name "SpaceLauncher"
  desc "App launcher/switcher"
  homepage "https://spacelauncherapp.com/"

  livecheck do
    url "https://spacelauncherapp.com/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "SpaceLauncher.app"

  zap trash: [
    "~/Library/Application Support/name.guoc.SpaceLauncher",
    "~/Library/Preferences/name.guoc.SpaceLauncher.plist",
  ]
end
