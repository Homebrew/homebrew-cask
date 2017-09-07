cask 'macbreakz' do
  version '5.32'
  sha256 '217bc617625b3e56da23c6f9d4e553d5f0cb8ffe3bc402be1f6efbbef6825089'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: 'f40199b5b26a1d0b8289894596874baa67f7209fa3c6bd29cdfe8de7265770a7'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
