cask 'razorsql' do
  version '8.2.4'
  sha256 '86827cc562800f48e38d13fcb9994c952fbed1036a07dca4423af97fda8bf8a0'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
