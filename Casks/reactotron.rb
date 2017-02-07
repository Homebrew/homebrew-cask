cask 'reactotron' do
  version '1.6.0'
  sha256 '0d25f248a12c16341def4c83ac3ce1fa67dd0ce93444bca41d7cb7920d7630e1'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '03d6aff82df568a9037557d7dde468619bc9716a21eaf7367ea22c6b45c75432'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
