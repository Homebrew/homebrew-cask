cask "aquaskk" do
  version "4.7.4"
  sha256 "0ab193d091ebdd00391184019e5c566f43b8a40303329fc28be2aa5b104115ec"

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  name "AquaSKK"
  homepage "https://github.com/codefirst/aquaskk"

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"
end
