cask "fing-cli" do
  version "5.5.2"
  sha256 "1a7d7e5993e453dee341d5eb95183216b2ca42c5b5ab10b4821eb7e48c49da6f"

  url "https://www.fing.com/images/uploads/general/CLI_macOSX_#{version}.zip"
  name "Fing Desktop Embedded CLI"
  desc "Network scanner"
  homepage "https://www.fing.com/products/development-toolkit/"

  livecheck do
    url "https://www.fing.com/products/development-toolkit/"
    regex(%r{href=.*?/CLI[._-]macOSX[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  pkg "Fing-#{version}-osX.pkg"

  uninstall pkgutil: "Fing"
end
