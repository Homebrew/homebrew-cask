cask 'phoenix' do
  version '2.6.1'
  sha256 '5ac0b9592f54045a86a49a8a628f4c94e5c0afd032ca3c67444dfc01d4b9a294'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'b560e8ffdbe23df575dcf8b055d28eb7b468255bac209e54bb2b09634877750f'
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
