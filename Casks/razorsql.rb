cask 'razorsql' do
  version '8.0.6'
  sha256 'c9c000c2447410c0da477e90f06f2f1c4b982ab4b3bdc5dc93023b36822b0119'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
