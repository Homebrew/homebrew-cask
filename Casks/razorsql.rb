cask 'razorsql' do
  version '8.3.0'
  sha256 'c73620a2b0785103451e7da90d2c2844f9ff6c7d25bf05d8410c4cd3de843fa9'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
