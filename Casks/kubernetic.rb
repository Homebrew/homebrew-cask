cask 'kubernetic' do
  version '2.0.14'
  sha256 '2bd9a6cc4ea3fab7bb33f6b1a358daaa7ce98b79328b81c7a632d28a8bb6733b'

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
