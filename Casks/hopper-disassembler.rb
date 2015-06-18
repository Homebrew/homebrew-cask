cask :v1 => 'hopper-disassembler' do
  version '3.9.11'
  sha256 '8dffd9a5b5806653d5f0add193dd4b34da0b0f0eb3d53eda9a94b1eb141d3b96'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler v3.app'
end
