cask 'razorsql' do
  version '8.3.5'
  sha256 'f22583095e5b75be26daaa38a227cf04d58b43bf377a1f6028c12af92ffb7da3'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
