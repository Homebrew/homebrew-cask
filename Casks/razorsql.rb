cask 'razorsql' do
  version '8.2.3'
  sha256 'ec215b28283f4ef7d542b3d6680a71c2be4bc38d036c93a43a0b85791ebe6380'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
