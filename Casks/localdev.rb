cask 'localdev' do
  version '0.5.6'
  sha256 '5981ed6eb22b920df98ac6c07cc1638d852530b16216dc5745db5ee6adbdf591'

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
