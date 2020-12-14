cask "aquaskk" do
  version "4.7.2"
  sha256 "3ffa4b0ebce4db6684ee1be1c3dd1247fcdc94cd10402c04f0e1baf3aabd5fab"

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast "https://github.com/codefirst/aquaskk/releases.atom"
  name "AquaSKK"
  homepage "https://github.com/codefirst/aquaskk"

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"
end
