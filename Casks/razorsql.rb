cask 'razorsql' do
  version '9.0.0'
  sha256 '8d859cd61a41e41dda71b66724cbc66ff8986bd4e080a0308eec637e2c40cfca'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
