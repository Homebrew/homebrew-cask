cask 'razorsql' do
  version '8.2.2'
  sha256 '09b65a58a98b69c1d8885435e60906d4c9866e7b65025425d2e8a6f6485b4712'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
