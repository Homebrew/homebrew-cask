cask 'reactotron' do
  version '1.14.0'
  sha256 'eee19bd59d4267c6f9e20d12c26fa908ddc1b66eb0bc1d5e489f4b0fca61f567'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '4c5d939b788fb2073057b56b729e27afb91a1ab8c73e64e86d0bbed678da48d5'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap trash: [
               '~/Library/Application Support/Reactotron',
             ]
end
