cask 'studio-3t' do
  version '2020.6.1'
  sha256 'ed351b3726e2d78f45721d7d68fa72589badaf92732f1062de3c51b1505beacb'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
