cask 'sonic-visualiser' do
  version '3.0.2,2225'
  sha256 '628efc0e267803728df54524f57d1088500f5ee0f358f4def6c29af0777b8ae8'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  name 'Sonic Visualiser'
  homepage 'http://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
