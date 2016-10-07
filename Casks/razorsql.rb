cask 'razorsql' do
  version '7.0.8'
  sha256 '3f22f0be5eb0a4ff06d81b162c4c3a7a801bd9e73932ca7cba6245152fbdd56f'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'
  license :commercial

  app 'RazorSQL.app'

  zap delete: '~/.razorsql'
end
