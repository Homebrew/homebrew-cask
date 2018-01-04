cask 'reactotron' do
  version '1.15.0'
  sha256 '56c166b1b09dc8863422656dc7a23f2cf22a0c85bb8bef5532fe2a95e7bdaf44'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: 'a6b99979214ffc8cdc9ddb8cd9d5386c6ecd69bec44bdbddc3ea2f194a01e39d'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap trash: [
               '~/Library/Application Support/Reactotron',
             ]
end
