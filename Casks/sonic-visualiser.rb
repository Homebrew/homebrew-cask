cask :v1 => 'sonic-visualiser' do
  version '2.4.1'
  sha256 '45edf5021376ed79e3a7a9a17745261f91362c05d90db17dc3179b1649c29332'

  url "https://code.soundsoftware.ac.uk/attachments/download/1186/Sonic%20Visualiser-#{version}.dmg"
  homepage 'http://www.sonicvisualiser.org/'
  license :unknown

  app 'Sonic Visualiser.app'
end
