cask :v1 => 'ring-central' do
  version :latest
  sha256 'cdb776a52313891263b0618b08fa47dd130168d64ea777f7cd7692887f714039'

  url 'http://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'http://www.ringcentral.com/office/features/desktop-apps/overview.html'
  license :closed

  app 'RingCentral for Mac.app'
end
