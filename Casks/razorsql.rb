cask 'razorsql' do
  version '9.0.2'
  sha256 'c476aa214fce7e34c3b3ab4f0a5cf6c16a90dc708a8763207ca56fe3e016a276'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
