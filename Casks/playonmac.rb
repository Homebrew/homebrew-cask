cask :v1 => 'playonmac' do
  version '4.2.6'
  sha256 '9fe183b95e5ac8b6666878e6a39e9ef72b945570b53f24ade10ac1bd975369b5'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  homepage 'http://www.playonmac.com/en'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PlayOnMac.app'
end
