cask :v1 => 'kismac' do
  version '0.3.3'
  sha256 'd48f307c1c46a1d1a6b4465d653cf417e583bc09b7ea76d21183068066bc49bb'

  url "http://update.kismacmirror.com/binaries/KisMAC-#{version}.dmg"
  appcast 'http://update.kismac-ng.org/sparkle/profileInfo.php',
          :sha256 => '18095f38358d65f5cbaa2a876745c7b1213d56893bc26c182138f51a2d3fa8df'
  homepage 'http://kismac-ng.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'KisMAC.app'
end
