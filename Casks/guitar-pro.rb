cask 'guitar-pro' do
  version :latest
  sha256 :no_check

  url 'https://alt-downloads.guitar-pro.com/gp7/stable/guitar-pro-7-setup.pkg'
  name 'Guitar Pro'
  homepage 'https://www.guitar-pro.com/'

  pkg 'guitar-pro-7-setup.pkg'

  uninstall pkgutil: 'com.arobas-music.guitarpro7.*'
end
