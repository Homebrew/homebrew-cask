cask "caramba-switcher" do
  version :latest
  sha256 :no_check

  # download.caramba.tech/apps/switcher/ was verified as official when first introduced to the cask
  url "https://cdn.caramba-switcher.com/files/CarambaSwitcherBeta.pkg"
  name "Caramba Switcher"
  desc "Keyboard switcher"
  homepage "https://caramba-switcher.com/"

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"
end
