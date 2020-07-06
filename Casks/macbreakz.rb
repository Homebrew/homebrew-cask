cask 'macbreakz' do
  version '5.35'
  sha256 '1a3cc6c0506bdd5b5b15ef0eb34013d367c9f3edb8354c5d087a5fc7177d2083'

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name 'MacBreakZ'
  homepage 'https://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
