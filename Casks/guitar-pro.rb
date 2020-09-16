cask "guitar-pro" do
  version "7.5"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://alt-downloads.guitar-pro.com/gp7/stable/guitar-pro-#{version.major}-setup.pkg"
  appcast "https://www.guitar-pro.com/en/index.php?pg=download"
  name "Guitar Pro"
  homepage "https://www.guitar-pro.com/"

  pkg "guitar-pro-#{version.major}-setup.pkg"

  uninstall pkgutil: "com.arobas-music.guitarpro*"
end
