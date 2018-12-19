cask 'phoenix' do
  version '2.6.2'
  sha256 '4ca6159a4075ac9fb0fa4fe071427fa424687b13a28f4db241ef904b7b2f7862'

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
