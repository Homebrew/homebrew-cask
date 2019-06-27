cask 'razorsql' do
  version '8.4.0'
  sha256 '8081c304f63ad3c129f99df95a16f4560e151f260cf2e619484d4d958a71422e'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
