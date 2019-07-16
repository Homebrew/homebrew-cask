cask 'localdev' do
  version '0.4.2'
  sha256 '3581f19ccaea66436ca61bab1075970d650fc1215607b6e6a96a2bf201325eda'

  # pantheon-localdev.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg"
  appcast 'https://pantheon.io/pantheon-localdev-power-users-pre-release'
  name 'Localdev'
  homepage 'https://pantheon.io/pantheon-localdev-power-users-pre-release'

  app 'Localdev.app'

  uninstall delete: [
                      '~/Library/Application Support/localdev',
                      '~/Library/Preferences/io.pantheon.local.helper.plist',
                      '~/Library/Preferences/io.pantheon.local.plist',
                    ]
end
