cask 'razorsql' do
  version '7.3.3'
  sha256 '78bd51aff8d351d388d3c105aef904f368f714b2afc23cb021bbb0cfb0ad377a'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '5942eab65ef288757c86159e0119444302123b012f4b19e2b41cdd70527ef5c8'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
