cask 'razorsql' do
  version '8.5.5'
  sha256 'cbfe2bbaa036d294a41ec13b875f248aff535eb24acdfd595edc5ac7a137506f'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
