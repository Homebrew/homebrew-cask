cask 'razorsql' do
  version '8.0.2'
  sha256 '8f37bf6586951cf3184685f8accc57baef531969ea200d26d1c471f6a5fb7fdb'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
