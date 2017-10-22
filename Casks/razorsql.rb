cask 'razorsql' do
  version '7.3.11'
  sha256 'ae58c9d99325eb9c724c563abfc49d335e023e169a84d47754a0494f7eb1a5cf'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '1838a06926cca35f999ae17255da683c507aa7a7721c4959a7fe13a01dffe798'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
