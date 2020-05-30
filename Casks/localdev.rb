cask 'localdev' do
  version '0.10.0'
  sha256 '276c470e6e1d45f074fbfc1b97990e923bdcc09ab6356d7e6a66b90b9fb6eea8'

  # pantheon-localdev.s3.amazonaws.com/ was verified as official when first introduced to the cask
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
