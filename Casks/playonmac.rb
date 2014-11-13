cask :v1 => 'playonmac' do
  version '4.2.5'
  sha256 '641733ccaf45d3fafcddf4e1f4e7a4f94c3b34b941936460d277ced1d7a27548'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  homepage 'http://www.playonmac.com/en'
  license :unknown

  app 'PlayOnMac.app'
end
