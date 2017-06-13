cask 'reactotron' do
  version '1.11.2'
  sha256 '0623c34811aa3dbf9dfb8ce10694f9bc4a66dbf1c812f12e1b2e9bf2cc152271'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '3a2a82a6f76b63bc823f33b246165bf45752ab176bc45937f175138d7461ba7e'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
