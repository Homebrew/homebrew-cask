class Fdt < Cask
  version 'latest'
  sha256 :no_check

  url 'http://fdt.powerflasher.com/update/fdt/installer/FDT_osx64.dmg'
  homepage 'http://fdt.powerflasher.com/'

  link 'FDT.app'
end
