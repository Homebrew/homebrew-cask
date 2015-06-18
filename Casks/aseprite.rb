cask :v1 => 'aseprite' do
  version '1.0.9'
  sha256 'a01474cfd416ef2a688c342a6f389cb51cc7966182700111dcca1b18911e116e'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end
