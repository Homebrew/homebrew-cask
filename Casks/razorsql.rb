cask 'razorsql' do
  version '8.1.1'
  sha256 'c4db969e78b43704742befc3f87d1830569836214609ecce3bd6b4c9f0c20fc1'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
