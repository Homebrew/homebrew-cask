cask :v1 => 'sonic-visualiser' do
  version '2.3'
  sha256 '8a8c6c5268f10dd6614afeabd40a4fa962a31d55db0aed1ddf369c5a5b8b4981'

  url "https://code.soundsoftware.ac.uk/attachments/download/907/Sonic%20Visualiser-#{version}.dmg"
  homepage 'http://www.sonicvisualiser.org/'
  license :unknown

  app 'Sonic Visualiser.app'
end
