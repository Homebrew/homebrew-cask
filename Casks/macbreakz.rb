cask 'macbreakz' do
  version '5.25'
  sha256 '75f7ab47d5b956f89d1bf1dac85e7f021b66c0ff9bbbb47c6f05203923c95b3e'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: '49d25a687e02902434f65518b2d2c5a81b22175bf3835eebd155ba4eac591a95'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app "MacBreakZ #{version.major}.app"
end
