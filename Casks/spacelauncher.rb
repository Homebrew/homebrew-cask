cask "spacelauncher" do
  version "1.4.13,85"
  sha256 :no_check

  url "https://spacelauncherapp.com/download/SpaceLauncher.zip"
  appcast "https://spacelauncherapp.com/download/appcast.xml"
  name "SpaceLauncher"
  homepage "https://spacelauncherapp.com/"

  app "SpaceLauncher.app"
end
