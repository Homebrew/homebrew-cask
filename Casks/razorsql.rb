cask 'razorsql' do
  version '9.0.5'
  sha256 'a927ca2104c0ddc9d1475f6c1beb0e6fb331ceaa3a326e2b0f67688c05fe6bc2'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
