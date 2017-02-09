cask 'reactotron' do
  version '1.7.0'
  sha256 '286663392d6f53f2de911380aee77c23fad04b05c285aed82d616b45f552dccd'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: 'c2a65f49ff4345bf46eaa0cef6d59f94df72f9cd819f1bb1ddd254d9041edc70'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
