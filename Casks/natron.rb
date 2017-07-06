cask 'natron' do
  version '2.3.0'
  sha256 '882e7869e65f29fbe0b2c97adb0065a86bfe47f9f01622dbddd64deeba89a32a'

  # downloads.sourceforge.net/natron was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/natron/Natron-#{version}.dmg"  
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '4d89bf0b2b8449a032f002135c79c38bba5110d46a8262f7c8a8fbd44254cfcb'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
