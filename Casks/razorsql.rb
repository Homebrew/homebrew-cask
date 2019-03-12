cask 'razorsql' do
  version '8.2.5'
  sha256 '3b880263f7bf1e430a6a3d976421bf41fa4f3af99386ac0e1dca1c3d4b03827b'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
