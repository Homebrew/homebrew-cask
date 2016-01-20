cask 'butter' do
  version '0.2.1'
  sha256 'f7fc79992efec76864903f5e5f3e637912d7870bbe93108ddf136fd4b8fe03b8'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom',
          checkpoint: '95870314529e113a7162ef6b946b26768691ee5e8ee3b45f1a01d57e50f53beb'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'
  license :mit

  app 'Butter.app'
end
