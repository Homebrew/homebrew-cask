cask 'reactotron' do
  version '1.10.0'
  sha256 'f82fa933d35c77db7f6b5ef18b968a3ce1369e43a119637ae3349bede55a2cbf'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: 'aa52002c0ba9e8a020c23db2a4cacc7ffbaace86d590dbeab0293336cacc6b86'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
