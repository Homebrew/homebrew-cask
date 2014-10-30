class Fdt < Cask
  version :latest
  sha256 :no_check

  url 'http://fdt.powerflasher.com/update/fdt/installer/FDT_osx64.dmg'
  homepage 'http://fdt.powerflasher.com/'
  license :unknown

  app 'FDT.app'
end
