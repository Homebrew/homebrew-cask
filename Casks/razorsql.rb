cask 'razorsql' do
  version '9.0.3'
  sha256 '3955645a29b7ebbcd9c6aec7df575aaa9ac3307a98cd30cd8ef618979d93b6ef'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
