cask "caramba-switcher" do
  version "2020.12.17,20201217.2"
  sha256 :no_check

  url "https://cdn.caramba-switcher.com/files/CarambaSwitcherBeta.pkg"
  name "Caramba Switcher"
  desc "Keyboard switcher"
  homepage "https://caramba-switcher.com/"

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"
end
