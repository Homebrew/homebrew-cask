cask 'reactotron' do
  version '1.0.0'
  sha256 '31ef4f1291c5d05090cf2dd493da4dcfa081cb462a7f5d2774d287ae1b0436cb'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'
  license :mit

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
