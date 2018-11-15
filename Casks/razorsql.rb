cask 'razorsql' do
  version '8.2.0'
  sha256 '63760e966a03cd016d3fc68d1e5d0a3832735b9b2dacecf14cb916a0610003ff'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
