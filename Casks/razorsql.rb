cask 'razorsql' do
  version '8.3.6'
  sha256 '70049a78e20cc2f234ad0cb6b71e6e327ce0573b84b1533280cd126e048129dd'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
