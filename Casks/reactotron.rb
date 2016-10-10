cask 'reactotron' do
  version '1.1.4'
  sha256 '7b58f437a8d6e11ed9ee84744b121d1f42f485ddfe3b576f418d234b348502c1'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/reactotron/reactotron/releases.atom',
          checkpoint: '915a3d36f3dfff24bb82236ad709a39d5abd5537c0290140aa3fce6e2e33e106'
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
