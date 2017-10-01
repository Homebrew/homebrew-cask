cask 'razorsql' do
  version '7.3.8'
  sha256 'b7a8de58e6d9d6484dd50355b758928a2107672f40e1b602f618bf5b41290943'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '592246f5ad611eea977593162da4e5b057acce92319d24916bf1ed45c51c5279'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
