cask 'mongotron' do
  version '1.0.0-alpha.5'
  sha256 'b20d014ae3a9355a112f84d98d2f81c27d3f99fd2dd7dc3455be465b27ab1e20'

  # github.com/officert/mongotron was verified as official when first introduced to the cask
  url "https://github.com/officert/mongotron/releases/download/#{version}/Mongotron-darwin-x64.zip"
  appcast 'https://github.com/officert/mongotron/releases.atom',
          checkpoint: 'f06905ea0434fcdeff49d494d1a60d9e476f2511b215027c9fc3eba7c066d5a9'
  name 'Mongotron'
  homepage 'http://mongotron.io/'

  app 'Mongotron-darwin-x64/Mongotron.app'

  zap delete: [
                '~/Library/Application Support/Mongotron',
                '~/Library/Caches/Mongotron',
              ]
end
