cask 'razorsql' do
  version '8.4.4'
  sha256 '4760411ae4bfb91f6e5014a5be0a704c886db98b9824daf6173011e9b8d47066'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
