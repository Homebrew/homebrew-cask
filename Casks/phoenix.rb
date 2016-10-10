cask 'phoenix' do
  version '2.3'
  sha256 'f04e567a947123155ebfea56c6f9b9f27e6bc0c80e6fadc734a3774900ed39ef'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'a9458b34e1447b21ffbf7de47e94ed99451126bf2fe46884d0c4e4b9809affcd'
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
