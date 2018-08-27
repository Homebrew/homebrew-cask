cask 'sonic-visualiser' do
  version '3.1,2382'
  sha256 '9994e17ef42218fad5fcf442ce3df939599a10972fd594080ccdf9408bede8ab'

  # code.soundsoftware.ac.uk was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast 'https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG'
  name 'Sonic Visualiser'
  homepage 'http://www.sonicvisualiser.org/'

  app 'Sonic Visualiser.app'
end
