cask 'reactotron' do
  version '1.1.1'
  sha256 '505545c3b7efa7884f0f1cc2defebe6b74a08c0b3879964721f3502f26deeb6e'

  url "https://github.com/reactotron/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/reactotron/reactotron/releases.atom',
          checkpoint: 'bd04ee26c6bd13918b2e18d28aae7b3521342f81fd3f148b2402406e70229af1'
  name 'Reactotron'
  homepage 'https://github.com/reactotron/reactotron'
  license :mit

  app 'Reactotron.app'

  zap delete: [
                '~/Library/Application Support/Reactotron',
              ]
end
