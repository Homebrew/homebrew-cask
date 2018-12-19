cask 'kubernetic' do
  version '2.2.0'
  sha256 'cee18e0c77a14270949248a0e5fc7405bc49f8467d70e34f9b4f5e89119ee7c6'

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
