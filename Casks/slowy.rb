cask 'slowy' do
  version '1.8'
  sha256 '3dcff6295b5612a0885b0128e47ad04ec416847c8f146637cc8e56b8d3cb511c'

  url "http://slowyapp.com/downloads/Slowyapp_v#{version}.dmg"
  name 'Slowy'
  homepage 'http://slowyapp.com/'
  license :commercial

  app 'Slowy.app'
end
