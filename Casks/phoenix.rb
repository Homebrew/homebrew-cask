cask 'phoenix' do
  version '2.1'
  sha256 '77dfc73e900678f3c22c17c689c334a7147c0c0ab1d3073e7a98ad2ae98e74ed'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '854ff599c6c9047209ada551ed219993f1ddcbed302a64d36b1fcaccefccb544'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: '~/.phoenix.js'
end
