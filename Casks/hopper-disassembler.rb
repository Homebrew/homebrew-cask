cask :v1 => 'hopper-disassembler' do
  version '3.9.4'
  sha256 'fc06dcd70c7af71eee96a95d32ab0ffa5b9452ec8d279fc8bc31c0d09575cc71'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler v3.app'
end
