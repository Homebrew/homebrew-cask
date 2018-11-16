cask 'sonic-visualiser' do
  version '3.1.1,2395'
  sha256 '2b7f09075f00082c28d694f9e1bff9ed04a22bc04b5f0e20e46a7a5f185f149f'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'https://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
