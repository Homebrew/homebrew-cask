cask 'phoenix' do
  version '2.6.3'
  sha256 'e2e6a1577d376d4a313f6133a6c026e2b136b7d1168615f12de58750b3a631db'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'

  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap trash: [
               '~/.phoenix.js',
               '~/Library/Application Support/Phoenix/storage.json',
             ]
end
