cask :v1 => 'razorsql' do
  version '6.3.9'
  sha256 'ff77e7c8d3b0e1ecb626a69d6f03a6c4e46edae64f6b130199639e8de33652ff'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  homepage 'http://razorsql.com/download_mac.html'
  license :unknown

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
