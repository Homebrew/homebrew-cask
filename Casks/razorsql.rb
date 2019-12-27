cask 'razorsql' do
  version '9.0.1'
  sha256 '472ac4959ea5d6358be6f446cbe6c5df5ea7fc0cd6a65d909cbcdf06c49ed905'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  depends_on macos: '>= :high_sierra'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
