cask :v1 => 'hopper-disassembler' do
  version '3.8.0'
  sha256 'e68b46aef94f8ac3296cd397758f9d3832409fe099bb35f847b10dbdf52157bb'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperWeb/appcast.php'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  app 'Hopper Disassembler.app'
end
