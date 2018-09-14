cask 'razorsql' do
  version '8.0.7'
  sha256 '6e626920deee44edda16d7bfc52af931ea2a7338c545ba5f3863400906ab8db5'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
