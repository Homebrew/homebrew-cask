cask 'natron' do
  version '2.3.0'
  sha256 '882e7869e65f29fbe0b2c97adb0065a86bfe47f9f01622dbddd64deeba89a32a'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '4d89bf0b2b8449a032f002135c79c38bba5110d46a8262f7c8a8fbd44254cfcb'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
