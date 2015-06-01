cask :v1 => 'ringcentral' do
  version :latest
  sha256 :no_check

  url 'http://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'http://www.ringcentral.com/office/features/desktop-apps/overview.html'
  license :closed

  app 'RingCentral for Mac.app'
end
