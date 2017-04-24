cask 'studio-3t' do
  version '5.2.2'
  sha256 '86e3b4d2545cc0e8e831ec4c1680dc0353841a44d8a913104373ce0e1b8cf783'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '627e9f98d4c76f038172125a0f95ac92c3db47e73f8ed1ded8505a8983928935'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
