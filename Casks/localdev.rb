cask 'localdev' do
  version '0.5.3'
  sha256 '10d90bc32dff51b192f93257b5241a52c752b2afe6d772f62cadce6ba0c61b71'

  # pantheon-localdev.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg"
  name 'Localdev'
  homepage 'https://pantheon.io/localdev'

  app 'Localdev.app'

  uninstall delete: [
                      '~/Library/Application Support/localdev',
                      '~/Library/Preferences/io.pantheon.local.helper.plist',
                      '~/Library/Preferences/io.pantheon.local.plist',
                    ]

  zap trash: [
               '~/Localdev',
               '~/.pantheonlocaldev',
             ]
end
