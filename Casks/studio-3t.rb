cask 'studio-3t' do
  version '5.6.2'
  sha256 '09c02e48627244941dff791f5e77a32723691f1b54889b35fc53890147f78c7f'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '7a41ead4099736f2eec72fcf8728c02d764dee91122f796d69fc8969b9bbb1f3'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
