cask 'studio-3t' do
  version '2020.5.0'
  sha256 'd5419bf198cb94071420f499f6fbca36b6be1bd68f1fb26dcbf461f6333096ba'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
