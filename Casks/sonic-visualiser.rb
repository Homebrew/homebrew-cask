cask 'sonic-visualiser' do
  version '3.0.3,2249'
  sha256 '5900b988b32c929c7f422d5d575cb221a62099b7a4bd49051233e327e3630070'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG',
          checkpoint: '01492e8eea4bc7fc54812030db962cd1887763e3e07adcf51f1d39cf97882fd0'
  name 'Sonic Visualiser'
  homepage 'http://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
