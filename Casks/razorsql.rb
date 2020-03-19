cask 'razorsql' do
  version '9.0.9'
  sha256 'b6ae0bd8b23fb70a33bb04921c1cc93239c9233e2b4d2740e79e8f845220cd62'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
