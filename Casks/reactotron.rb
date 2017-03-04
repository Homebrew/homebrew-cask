cask 'reactotron' do
  version '1.8.0'
  sha256 '64790e7b199241b6923839709f5679c2c0a1e157f6fc85138a345facf3f90987'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '5a7cf84b2695661da635e9687598a84881a18fae9a409180706932f4733170e5'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
