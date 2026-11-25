cask "equinox" do
  version "7.0"
  sha256 "26b2fae0ad89cf2ffafa898e4ca5b7b7566272a6a36ccc26007e314a7f747127"

  url "https://github.com/rlxone/Equinox/releases/download/v#{version}/Equinox-Installer.dmg"
  name "Equinox"
  desc "Create dynamic wallpapers"
  homepage "https://equinoxmac.com/"

  depends_on macos: :monterey

  app "Equinox.app"

  zap trash: [
    "~/Library/Application Scripts/com.rlxone.equinox",
    "~/Library/Containers/com.rlxone.equinox",
  ]
end
