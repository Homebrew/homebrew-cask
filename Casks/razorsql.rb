cask 'razorsql' do
  version '7.4.6'
  sha256 'd7f48444a9d993ac6e25d8bbc0ceafcc8bb180770047db458c49aa4ed3295e8c'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '5fef1707a1654d4cc7db5294a95dd84ca746c79e8db509b7361439a883bb9ae1'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
