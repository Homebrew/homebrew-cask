cask 'studio-3t' do
  version '5.2.1'
  sha256 '694b5ee3a4617af3eea1a36703ab541e096aba07e453dab424862d788c4d82c2'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '627e9f98d4c76f038172125a0f95ac92c3db47e73f8ed1ded8505a8983928935'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
