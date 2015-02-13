cask :v1 => 'razorsql' do
  version '6.3.17'
  sha256 '8a95889f9fbb5761d09245a2c9da0fd76f51d369930f1e570ab60d7e84d129a7'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  name 'RazorSQL'
  homepage 'http://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
