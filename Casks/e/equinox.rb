cask "equinox" do
  version "6.0"
  sha256 "1271dfb05af237d5f31d18c67b8755c3d57a8683257ea2eef5bddcd9bbd24261"

  url "https://github.com/rlxone/Equinox/releases/download/v#{version}/Equinox-Installer.dmg",
      verified: "github.com/rlxone/Equinox/"
  name "Equinox"
  desc "Create dynamic wallpapers"
  homepage "https://equinoxmac.com/"

  app "Equinox.app"

  zap trash: [
    "~/Library/Application Scripts/com.rlxone.equinox",
    "~/Library/Containers/com.rlxone.equinox",
  ]
end
