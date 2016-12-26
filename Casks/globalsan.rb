cask 'globalsan' do
  version '5.3.0.541'
  sha256 'f0fd88aefe931b4ba932ec2f9e7e8d9760668f903812f80c42172a74ce782971'

  # snsftp.com was verified as official when first introduced to the cask
  url "http://www.snsftp.com/public/globalsan/globalSAN-#{version}.dmg"
  name 'globalSAN iSCSI Initiator'
  homepage 'http://www.studionetworksolutions.com/globalsan-iscsi-initiator/'

  pkg 'globalSAN.pkg'

  uninstall script: {
                      executable: 'Uninstall',
                      input:      ['y'],
                    }

  zap       script: {
                      executable: 'Uninstall',
                      input:      ['n'],
                    }
end
