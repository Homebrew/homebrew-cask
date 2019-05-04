cask 'razorsql' do
  version '8.3.3'
  sha256 '5fdf4ef3b3261ec7c6ff4ad3e38e24cf9a88d895362a294bdc5db8fceffd515e'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
