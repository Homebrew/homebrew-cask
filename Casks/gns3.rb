cask 'gns3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.0.1'
  sha256 '68197caeb90f849c79eef749ed460073a74d25838cc2d074506acec7a2d79577'

  # github.com/GNS3/gns3-gui was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast 'https://github.com/GNS3/gns3-gui/releases.atom',
          checkpoint: 'c15cfc06e174a66080507d0092f39591582feb5b177a984bb4e61088237bcc46'
  name 'GNS3'
  homepage 'https://www.gns3.com/'

  app 'GNS3.app'
end
