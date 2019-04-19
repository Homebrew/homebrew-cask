cask 'razorsql' do
  version '8.3.1'
  sha256 '3fc146445fb9f2a0b8ac56b598629385abddf9f88acd650822ef727761165599'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
