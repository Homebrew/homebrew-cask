cask 'razorsql' do
  version '7.2.6'
  sha256 'cb106a25f05676741bc6b7dc92c009c0b863120a529c541268e06553e924c24c'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
