cask 'razorsql' do
  version '7.3.10'
  sha256 '97fe6b20d99cc23a7349869d4b0f6bf208927a010e8a4617d212015268b2c61e'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '2fdf4197656467224670137793f99ae65dc6a3191a2069e5829207a9c09d93b0'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
