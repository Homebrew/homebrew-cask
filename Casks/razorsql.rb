cask 'razorsql' do
  version '7.3.2'
  sha256 '160b8e167879ade6d1f6d2797f6bd6a0c57b336021c990c3ed04f9c3e7561ee1'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'cc116654c6a1d1c5696ebf394eece02789fc76a885d66cde5787957c4441c277'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
