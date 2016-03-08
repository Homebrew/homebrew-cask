cask 'razorsql' do
  version '6.3.26'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '820deccfc41be160db3158f9ed69570bf054d4306a4a0180bf8d89d70376a3db'
    url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}.dmg"
  else
    sha256 '1ac51415955b7d72197184763fba707d675cdf9c9c65cac1bee91fe925aca677'
    url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  end

  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap delete: '~/.razorsql'
end
