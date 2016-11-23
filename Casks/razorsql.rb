cask 'razorsql' do
  version '7.1.0'
  sha256 'cabc57ed66062e03250b321ac486a4b484f22bb502af80a5fe7c491dd4e9a9d0'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap delete: '~/.razorsql'
end
