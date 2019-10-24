cask 'studio-3t' do
  version '2019.6.1'
  sha256 'f9a5513d2174a6364b470a35cf1bbea7197e4c7f78b00edd7a80793a2a99238d'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
