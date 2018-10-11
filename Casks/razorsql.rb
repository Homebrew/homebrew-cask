cask 'razorsql' do
  version '8.1.0'
  sha256 'e59f82c752f862646b4159b1a80b9d76bd451919468ca6763f6941848665d322'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
