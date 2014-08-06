class Nomachine < Cask
  version '4.2.27_1'
  sha256 'b210543612f9f99e120b356ef38754bd9b8f20c54d5d657e88a1d73b644cf145'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  homepage 'http://www.nomachine.com'

  install 'NoMachine.pkg'
  uninstall :files => ['/Applications/NoMachine.app']
end
