cask :v1 => 'synergy' do
  version '1.6.2'
  sha256 '259dd8367e0d9b6152e93d50854687d54714f649b6b018949621ba2194b3f987'

  url 'http://synergykm.com/binaries/downloads/synergy-1.6.2-master-ebba77f-MacOSX1010-x86_64.dmg'
  name 'Synergy'
  homepage 'http://synergykm.com/'
  license :gpl
  depends_on :arch => :x86_64

  app 'Synergy.app'
end
