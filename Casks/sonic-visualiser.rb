cask 'sonic-visualiser' do
  version '3.2,2422'
  sha256 'a168e142dfbff5ee78e3c8246dac4751243f407f0131b426a62bbc61903c4442'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
