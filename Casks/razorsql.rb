cask 'razorsql' do
  version '7.3.5'
  sha256 '84541b0f16c02a485829419af1a0990284849163ece11783b077924715b249a3'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'fc3322b12e1f71c86f56a11fa35deb3b22889d67ae66b857babff19648b0cb25'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
