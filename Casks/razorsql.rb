cask 'razorsql' do
  version '7.4.10'
  sha256 '201df9ccbbbe3e5347c474986ee456b58971f41e0b5ba8b77d7a5cee3db8b465'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '09a9047917ed8dcd6ec67979f126263097c1a46b723bf5deac21047f8ea6cac5'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
