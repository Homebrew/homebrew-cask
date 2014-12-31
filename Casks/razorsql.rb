cask :v1 => 'razorsql' do
  version '6.3.16'
  sha256 'e4e2838be5860648332358ad76725c521e537f156925210ce4ae3793e0c0f96b'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  homepage 'http://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
