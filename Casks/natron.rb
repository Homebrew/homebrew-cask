cask 'natron' do
  version '2.3.14'
  sha256 '7afe4ab02f2538b695e6d36f26fade558a9625fd4d228f587cff38dd5478b804'

  # downloads.sourceforge.net/natron was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/natron/Natron-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/natron/files/OSX/Universal/releases/'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
