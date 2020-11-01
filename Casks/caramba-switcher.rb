cask "caramba-switcher" do
  version :latest
  sha256 :no_check

  # download.caramba.tech was verified as official when first introduced to the cask
  url "https://download.caramba.tech/apps/switcher/mac/CarambaSwitcherBeta.pkg"
  name "Caramba Switcher"
  desc "Experimental, intelligent, self-turning keyboard switcher"
  homepage "https://caramba-switcher.com/"

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"

  zap trash: [
    "/System/Volumes/Data/private/var/db/receipts/tech.caramba.switcher.bom",
    "/System/Volumes/Data/private/var/db/receipts/tech.caramba.switcher.plist",
    "/System/Volumes/Data/usr/local/Caskroom/caramba-switcher",
    "/System/Volumes/Data/usr/local/Caskroom/caramba-switcher",
    "/usr/local/Caskroom/caramba-switcher",
    "~/Library/Caches/Homebrew/Cask/caramba-switcher--:latest.pkg",
    "~/Library/Caches/Homebrew/Cask/caramba-switcher--latest.pkg",
  ]
end
