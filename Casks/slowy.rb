cask :v1 => 'slowy' do
  version '1.7'
  sha256 '0b2c6414c01d4e940e1df26034258a8401f0f302278a00ff13adeecada582c81'

  url "http://slowyapp.com/downloads/Slowyapp_v#{version}.dmg"
  homepage 'http://slowyapp.com/'
  license :unknown

  app 'Slowy.app'
end
