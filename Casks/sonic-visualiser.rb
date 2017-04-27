cask 'sonic-visualiser' do
  version '3.0.2,2225'
  sha256 '628efc0e267803728df54524f57d1088500f5ee0f358f4def6c29af0777b8ae8'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG',
          checkpoint: '4777a3b0c164e7718e3346b7b68907d9d3435d505ac376bee2a2b9131f7296d6'
  name 'Sonic Visualiser'
  homepage 'http://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
