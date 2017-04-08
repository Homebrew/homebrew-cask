cask 'reactotron' do
  version '1.9.0'
  sha256 '4ebd0266db38a2595fd2030020e99167cd60d8c8a644c6c63c0184caed41125e'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '932db7cdfc462df04fcce4e9e998912014e5579a97c30b8bbf2298852374a643'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
