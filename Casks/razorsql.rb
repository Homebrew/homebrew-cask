cask 'razorsql' do
  version '8.0.9'
  sha256 '6f40e1901a52e424797b2458e78d2f8f4d54cf554c41c7266296803013dc3eff'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
