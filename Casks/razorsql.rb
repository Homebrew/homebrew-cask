cask 'razorsql' do
  version '8.4.2'
  sha256 '68ca0aa83df9c721bb6a4fcc6137da6e9ca259cd056589cd07bb191ac64cbbe9'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
