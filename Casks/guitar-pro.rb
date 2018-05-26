cask 'guitar-pro' do
  version '7'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://alt-downloads.guitar-pro.com/gp7/stable/guitar-pro-#{version}-setup.pkg"
  name 'Guitar Pro'
  homepage 'https://www.guitar-pro.com/'

  pkg "guitar-pro-#{version}-setup.pkg"

  uninstall pkgutil: 'com.arobas-music.guitarpro*'
end
