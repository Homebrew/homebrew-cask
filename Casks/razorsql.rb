cask 'razorsql' do
  version '8.3.2'
  sha256 'edf1ec513568f0d5b610bb8467572b6e573f146a67a8e317703e2d3e28c595ee'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
