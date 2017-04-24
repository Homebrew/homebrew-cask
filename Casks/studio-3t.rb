cask 'studio-3t' do
  version '5.2.2'
  sha256 '86e3b4d2545cc0e8e831ec4c1680dc0353841a44d8a913104373ce0e1b8cf783'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '78ff051d040ab2537f8275e59975d9e598431d9f63530ec0492a42cd8c3cb8be'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
