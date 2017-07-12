cask 'studio-3t' do
  version '5.3.5'
  sha256 '8c06bf4c9d6a7190c6665133a892e2a5b9f1201fe3a65ce19d736d6964987a7a'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'b7c9ead7645dd3b6d9b0db600905ffc8a606843d8f80be9d2d9abbc463820dd7'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
