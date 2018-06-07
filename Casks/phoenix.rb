cask 'phoenix' do
  version '2.6.2'
  sha256 '4ca6159a4075ac9fb0fa4fe071427fa424687b13a28f4db241ef904b7b2f7862'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'cadc3260539f7d7dd48e863dd68bbb25354a482d8781dc51b87f59445a888df4'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap trash: [
               '~/.phoenix.js',
               '~/Library/Application Support/Phoenix/storage.json',
             ]
end
