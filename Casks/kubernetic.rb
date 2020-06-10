cask 'kubernetic' do
  version '2.8.0'
  sha256 'e6de78821ff673ffee8e9cb4b696e6202465264582fc73cab60fb67ede9e2fbb'

  # kubernetic.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg"
  appcast 'https://kubernetic.s3.amazonaws.com/latest-mac.yml'
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
