cask 'razorsql' do
  version '7.3.12'
  sha256 '9249fd6d3e85b936177a3058cd9ac4c80e2b6efaede50b68399f70c9b88cc7a9'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '1838a06926cca35f999ae17255da683c507aa7a7721c4959a7fe13a01dffe798'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
