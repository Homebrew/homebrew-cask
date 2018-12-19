cask 'razorsql' do
  version '8.2.1'
  sha256 '6f062d15f07968fadc2b056e2e71609769963f34d3bcb9aa4db0e3c2e81a00d7'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
