cask :v1 => 'butter' do
  version '0.2.1'
  sha256 'f7fc79992efec76864903f5e5f3e637912d7870bbe93108ddf136fd4b8fe03b8'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'
  license :mit

  app 'Butter.app'
end
