cask :v1 => 'hopper-disassembler' do
  version :latest
  sha256 :no_check

  url 'http://www.hopperapp.com/HopperWeb/download_last_v3.php'
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler v3.app'
end
