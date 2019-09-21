cask 'razorsql' do
  version '8.4.5'
  sha256 '75e8e8be784f9e85b4b42180d46898fca95a31023385852b13314bdeab7a356a'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
