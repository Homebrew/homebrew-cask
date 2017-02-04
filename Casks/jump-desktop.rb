cask 'jump-desktop' do
  version '7.0.2'
  sha256 'e74af344b252b4e7fc6ca3e083c14db55cab9adb433efdc93a5e7fd010e24966'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '16c78aa6cdc4ecfceb2cce490f374230bc7e15551023277e71c3a4514481aa6f'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
