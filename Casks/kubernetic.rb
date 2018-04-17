cask 'kubernetic' do
  version '0.8.0'
  sha256 'a37048b7a6f44ea7c6bda904dd26cef139c88b410f4b2c597d44c5e684e7d428'

  # s3-eu-west-1.amazonaws.com/kubernetic was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/kubernetic/Kubernetic-#{version}.dmg"
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
