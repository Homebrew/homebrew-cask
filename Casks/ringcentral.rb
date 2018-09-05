cask 'ringcentral' do
  version :latest
  sha256 :no_check

  url 'https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/office/features/desktop-apps/overview.html'

  app 'RingCentral for Mac.app'
end
