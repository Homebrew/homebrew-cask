cask 'fdt' do
  version :latest
  sha256 :no_check

  url 'http://fdt.powerflasher.com/update/fdt/installer/FDT_osx64.dmg'
  name 'FDT'
  homepage 'https://fdt.powerflasher.com/'

  app 'FDT.app'
end
