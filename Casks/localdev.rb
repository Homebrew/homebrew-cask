cask 'localdev' do
  version '0.5.4'
  sha256 '963048baf4b119d4940cf0e939e505d6792111451b9df3cd9dabad4c20776d15'

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
