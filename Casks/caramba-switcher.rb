cask "caramba-switcher" do
  version :latest
  sha256 :no_check

  url "https://cdn.caramba-switcher.com/files/CarambaSwitcherBeta.pkg",
      verified: "download.caramba.tech/apps/switcher/"
  name "Caramba Switcher"
  desc "Keyboard switcher"
  homepage "https://caramba-switcher.com/"

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"
end
