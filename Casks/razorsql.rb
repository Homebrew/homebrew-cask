cask 'razorsql' do
  version '7.3.9'
  sha256 '9f6f08e78ebf9fceba51cb7f081680d061599d2f46d9505e4b55829376d16e27'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '243d03cbda169b95315f2193d54778b3a08aa5865de235b521d9c4120a1cb78a'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
