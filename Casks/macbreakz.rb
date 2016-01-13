cask 'macbreakz' do
  version :latest
  sha256 :no_check

  url 'http://www.publicspace.net/download/MacBreakZ5.dmg'
  appcast 'http://www.publicspace.net/app/signed_mb5.xml',
          :checkpoint => '17d2ef73b30c1e2bc01f2287888d2a8cdd61f552822b205b59e9783c8b470143'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app 'MacBreakZ 5.app'
end
