cask :v1 => 'razorsql' do
  version '6.3.23'
  sha256 'a57fc8c92b8ccda950be3da6f15a2dbfdc6eff7462bc4f477e0bc95877f5fbb0'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  name 'RazorSQL'
  homepage 'http://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
