cask 'razorsql' do
  version '8.5.2'
  sha256 '249e88b4504564cb1a6758888049486de2ffea17532c2d72c53dcbb88b8e6a23'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
