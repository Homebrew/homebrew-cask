cask "spacelauncher" do
  version "1.4.13,85"
  sha256 :no_check

  url "https://spacelauncherapp.com/download/SpaceLauncher.zip"
  name "SpaceLauncher"
  homepage "https://spacelauncherapp.com/"

  livecheck do
    url "https://spacelauncherapp.com/download/appcast.xml"
    strategy :sparkle
  end

  app "SpaceLauncher.app"
end
