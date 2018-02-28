cask 'razorsql' do
  version '7.4.7'
  sha256 '1cf6f4381860cdb0afd2c48dbc80c7a5ac8bc46891297d2e72488ea80d048dc0'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '4374790f346b673017238ba56ffae3ffe81bf720c3f70b3285430a947be0c807'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
