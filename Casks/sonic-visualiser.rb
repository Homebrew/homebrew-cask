cask 'sonic-visualiser' do
  version '3.2.1,2435'
  sha256 'e1d61769ac29db8d9644b2efe23df9f40a182783678ddca1626f0bc39c54acc5'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
