cask 'razorsql' do
  version '7.3.13'
  sha256 'b3c0f6c06133b3f127861f67cd222c9c3a9ec86c4154db03fc6bb2dcf52d991c'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '3341ecb811376a26fe243dc37a481f701792350c0e2865dfbc7aa65f1cb6aa7e'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
