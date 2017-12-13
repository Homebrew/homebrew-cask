cask 'razorsql' do
  version '7.4.1'
  sha256 '7244d70b2314c17f742ae798fa8f3d291892533edf7436b791dad94230d92273'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'fa19d1113b07bec9ee949450e64ea430a6bc2355d4ad85c4e067ce33f9bb26ff'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
