cask "fing-cli" do
  version "5.5.2"
  sha256 "1a7d7e5993e453dee341d5eb95183216b2ca42c5b5ab10b4821eb7e48c49da6f"

  url "https://www.fing.com/images/uploads/general/CLI_macOSX_#{version}.zip"
  appcast "https://www.fing.com/products/development-toolkit/"
  name "Fing Desktop Embedded CLI"
  homepage "https://www.fing.com/products/development-toolkit/"

  pkg "Fing-#{version}-osX.pkg"

  uninstall pkgutil: "Fing"
end
