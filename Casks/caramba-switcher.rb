cask "caramba-switcher" do
  version "2021.03.18,20210318.2"
  sha256 :no_check

  url "https://cdn.caramba-switcher.com/files/CarambaSwitcherBeta.pkg"
  name "Caramba Switcher"
  desc "Keyboard switcher"
  homepage "https://caramba-switcher.com/"

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"
end
