cask 'razorsql' do
  version '8.4.3'
  sha256 '1d05e4b2b664970bb00b97c8a899994e5a8886094bb9daa29d17a2c0efef268d'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
