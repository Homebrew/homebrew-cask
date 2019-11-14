cask 'proclaim' do
  version :latest
  sha256 :no_check

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url 'https://downloads.logoscdn.com/Proclaim/Installer/Proclaim.dmg'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
