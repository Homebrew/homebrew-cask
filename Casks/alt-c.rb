cask "alt-c" do
  version "1.0.7"
  sha256 "5672a42a6358ee5497c7e17d8618ca31745ff735e425496409267e6265cca3e9"

  url "https://altcopy.net/Alt-C_Setup_#{version}.pkg"
  appcast "https://altcopy.net/"
  name "Alt-C"
  homepage "https://altcopy.net/"

  pkg "Alt-C_Setup_#{version}.pkg"

  uninstall quit:    "za.co.canobakedbeans.mac.Alt-C",
            pkgutil: "za.co.canobakedbeans.mac.Alt-C"

  zap trash: "~/Library/Application Support/za.co.canobakedbeans.instacopy.coredata.Core_Data"
end
