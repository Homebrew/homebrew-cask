cask 'phoenix' do
  version '2.4'
  sha256 '837c6c182ee40d274e09d70fe9dbca60533135dead1a450cf58900e979c64f4b'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'bcb05d9fe6fa2ffd1597f03f1a70c7650e02bc7d3b5443d7b904176abafc8f48'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: [
                '~/.phoenix.js',
                '~/Library/Application Support/Phoenix/storage.json',
              ]
end
