cask :v1 => 'hopper-disassembler' do
  version '3.9.9'
  sha256 '60a8412269cc51fbd8565f280dd70bea34d102c74a5efdc201b468c566d5ad87'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler v3.app'
end
