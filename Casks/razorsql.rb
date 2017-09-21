cask 'razorsql' do
  version '7.3.7'
  sha256 '6a5990f73a7907993c25e29abb7a165fa8e54d189991f96d59fbd9ba20cdbe74'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '31ca05e278d9e8b7cc3c423d4220b24b15a30d8653f5a5eab2500e2d2fbc0b35'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
