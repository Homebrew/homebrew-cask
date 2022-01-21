cask "alt-c" do
  version "1.0.7"
  sha256 "5672a42a6358ee5497c7e17d8618ca31745ff735e425496409267e6265cca3e9"

  url "https://altcopy.net/Alt-C_Setup_#{version}.pkg"
  name "Alt-C"
  desc "Two-way text copying"
  homepage "https://altcopy.net/"

  livecheck do
    url "https://altcopy.net/versionMac"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  pkg "Alt-C_Setup_#{version}.pkg"

  uninstall quit:    "za.co.canobakedbeans.mac.Alt-C",
            pkgutil: "za.co.canobakedbeans.mac.Alt-C"

  zap trash: "~/Library/Application Support/za.co.canobakedbeans.instacopy.coredata.Core_Data"
end
