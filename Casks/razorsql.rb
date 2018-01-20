cask 'razorsql' do
  version '7.4.3'
  sha256 '51a128ab78efb66a4eca445dba1fe1dc2a3457e8601b5a7a1ea60ee1e2a7fffe'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '62faf529a1483a42fac97cf74de77dcdcea3691847d781c74c61affd26676a4b'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
