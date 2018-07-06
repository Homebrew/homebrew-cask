cask 'kubernetic' do
  version '2.0.15'
  sha256 'b049064813655c89d63b916dd3e56f7f43f82bf369816e9bf51e9f99bd63d237'

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
