cask 'razorsql' do
  version '7.0.5'
  sha256 '2885e6542028a743579ad1f69427a1e254933e47f925d5d7b22c057b1b73794a'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap delete: '~/.razorsql'
end
