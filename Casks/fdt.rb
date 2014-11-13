cask :v1 => 'fdt' do
  version :latest
  sha256 :no_check

  url "http://fdt.powerflasher.com/update/fdt/installer/FDT_osx64.dmg"
  homepage 'http://fdt.powerflasher.com/'
  license :commercial

  app 'FDT.app'
end
