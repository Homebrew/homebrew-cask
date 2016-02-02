cask 'kismac' do
  version '0.3.3'
  sha256 'd48f307c1c46a1d1a6b4465d653cf417e583bc09b7ea76d21183068066bc49bb'

  # kismacmirror.com is the official download host per the vendor homepage
  url "http://update.kismacmirror.com/binaries/KisMAC-#{version}.dmg"
  name 'KisMAC'
  homepage 'http://kismac-ng.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'KisMAC.app'
end
