cask 'razorsql' do
  version '8.0.8'
  sha256 '7b624c4d7e43ba59c78cb4a212521531041aa21077b694c5705e3a91f796d288'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
