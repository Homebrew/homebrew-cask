cask 'mongotron' do
  version '1.0.0-alpha.4'
  sha256 'b5f435ada45b3a09b6803074b5e2a50883349f2e6a3aa6dfa5bf7c23927d50a1'

  # github.com/officert/mongotron was verified as official when first introduced to the cask
  url "https://github.com/officert/mongotron/releases/download/#{version}/Mongotron-darwin-x64.zip"
  appcast 'https://github.com/officert/mongotron/releases.atom',
          checkpoint: 'acecea0dbfae6addd49f0e0456ba3a85fede5bdfe353f8cc1dff38403644e4d1'
  name 'Mongotron'
  homepage 'http://mongotron.io/'
  license :mit

  app 'Mongotron-darwin-x64/Mongotron.app'

  zap delete: [
                '~/Library/Application Support/Mongotron',
                '~/Library/Caches/Mongotron',
              ]
end
