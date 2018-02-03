cask 'razorsql' do
  version '7.4.5'
  sha256 'e2fdad62e585dfac54acc609e1fbc4edd77c122cc910bb67bdf7cd65febcded9'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'c4529c968f4fe113490bcba37be6c4c3cdbded6f809ea7d870a5c9bcefb9cc32'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
