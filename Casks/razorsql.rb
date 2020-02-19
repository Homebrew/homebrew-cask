cask 'razorsql' do
  version '9.0.6'
  sha256 'ae2e6d039ddaa3cdb94713c4598ac925e398bdb24696e03f12d3c96c7f72f7ad'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
