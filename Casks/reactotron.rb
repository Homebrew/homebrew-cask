cask 'reactotron' do
  version '1.6.0'
  sha256 '0d25f248a12c16341def4c83ac3ce1fa67dd0ce93444bca41d7cb7920d7630e1'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/reactotron/reactotron/releases.atom',
          checkpoint: '1cdbbdfc4b8e0f3cebac8fc98ddc1579a9586d3fa1fefb29073221e4b3cc5e11'
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
