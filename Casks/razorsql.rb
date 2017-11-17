cask 'razorsql' do
  version '7.3.14'
  sha256 '8fc84bedc6fd6f452ac21aeb83af23c4803d68b43ebb25b97b534d07084d3334'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '45cba1d619ab7c7f012380997745baebdd30c083300895061047c57be3a0dca9'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
