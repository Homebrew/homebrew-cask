cask 'studio-3t' do
  version '2020.1.2'
  sha256 '605b93d72f591bab4424cae319ff23c1d0fc86d024fc6ed25e7742b5c1ad388e'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
