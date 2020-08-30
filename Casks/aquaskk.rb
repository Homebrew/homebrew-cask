cask "aquaskk" do
  version "4.7.1"
  sha256 "59b7412b3f47a52b88a26829e97d062c6d443826e7e54b87339e4e083bed337e"

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast "https://github.com/codefirst/aquaskk/releases.atom"
  name "AquaSKK"
  homepage "https://github.com/codefirst/aquaskk"

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"
end
