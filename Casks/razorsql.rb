cask 'razorsql' do
  version '8.4.1'
  sha256 '72432c17c76bd8360fbf307cd2c099a8e01e3094d9bf59a63dbff148570bc938'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
