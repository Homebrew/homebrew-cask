cask 'kubernetic' do
  version '2.0.16'
  sha256 'c0c682e6ebd338d2db8d1cb09dd6cb4308c5b1356febff691afb04dec944dad6'

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
