cask 'studio-3t' do
  version '2020.2.1'
  sha256 '5f136b4860b6413ecd70f5d04e937d12054a44726e53700e62a23b1b1473d62e'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
