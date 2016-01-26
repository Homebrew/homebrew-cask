cask 'macbreakz' do
  version '5.24'
  sha256 '854d33c9bf5db181d433106e5972df019f414c34b7e1bb87fd1b2381eef88b56'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: '17d2ef73b30c1e2bc01f2287888d2a8cdd61f552822b205b59e9783c8b470143'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app "MacBreakZ #{version.major}.app"
end
