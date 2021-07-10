cask "caramba-switcher" do
  version "2021.06.23"
  sha256 :no_check

  url "https://cdn.caramba-switcher.com/files/CarambaSwitcherBeta.pkg"
  name "Caramba Switcher"
  desc "Keyboard switcher"
  homepage "https://caramba-switcher.com/"

  livecheck do
    url "https://caramba-switcher.com/mac"
    regex(/(\d+(?:\.\d+)+)\s*для\s*Mac/i)
  end

  pkg "CarambaSwitcherBeta.pkg"

  uninstall quit:    "tech.caramba.switcher",
            pkgutil: "tech.caramba.switcher"
end
