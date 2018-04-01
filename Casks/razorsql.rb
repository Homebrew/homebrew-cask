cask 'razorsql' do
  version '7.4.9'
  sha256 'e33dd2bc2a5c74e7e52f49a1af53839f0bb13c4ec15b3c65aa4b2fd7475205eb'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '24333781b5fecd3d7ab5d06273c6786c7e2ffa1f30f49fe1aa1d15c61486cccf'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
