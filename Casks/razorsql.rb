cask 'razorsql' do
  version '8.0.4'
  sha256 '2664afd6e009dd56c23e86197e2acd4f540bc963fc2b811b3f65dcb089e859b2'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
