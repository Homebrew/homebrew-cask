cask :v1 => 'razorsql' do
  version '6.3.14'
  sha256 '61065ed90335c25e5b2e74dc304d339b6de640f5a4460d30124237640e1b4d44'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  homepage 'http://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
