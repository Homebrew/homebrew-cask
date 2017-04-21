cask 'razorsql' do
  version '7.2.5'
  sha256 '39d8f50c6d185e5643db1ce8827361ce25feaf37ee26288f459a0bcaf17644cd'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap delete: '~/.razorsql'
end
