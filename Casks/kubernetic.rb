cask 'kubernetic' do
  version '2.3.0'
  sha256 '937df21a4c9b5e11b841590d6a3196121a13207e8993b782158dd35f297eeaa4'

  # kubernetic.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg"
  appcast 'https://kubernetic.com/'
  name 'Kubernetic'
  homepage 'https://kubernetic.com/'

  app 'Kubernetic.app'

  uninstall signal: [
                      ['TERM', 'com.kubernetic.desktop.helper'],
                      ['TERM', 'com.kubernetic.desktop'],
                    ]

  zap trash: [
               '~/.kubernetic',
               '~/Library/Application Support/Kubernetic',
               '~/Library/Logs/Kubernetic',
               '~/Library/Preferences/com.kubernetic.desktop.*',
               '~/Library/Saved Application State/com.kubernetic.desktop.*',
             ]
end
