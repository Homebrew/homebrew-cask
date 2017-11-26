cask 'studio-3t' do
  version '5.6.4'
  sha256 '11b78151abd5bbf0fddd3f39209bdf61777af3e29d5bd676cc008ad1a25539ea'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '18c1baa32e9e91a5a7dd27ac990371d617ce34e9039e693f05dd6c7ca24e94e1'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
