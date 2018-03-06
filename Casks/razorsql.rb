cask 'razorsql' do
  version '7.4.8'
  sha256 'abceebf728eab52c38cfa765f78113986d32694f37b48f69084b8a7193d2fa58'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '7ef196e70903fb94192839823e8cfc1350089f7a716c1f5a094b9793286e77c3'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
