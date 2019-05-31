cask 'pantheon-localdev' do
  version '0.4.0'
  sha256 '5ce8b74ab6af8214abb2cd8a4d56d3ed431f76cfa9083ba1606aa25e947af96a'

  # pantheon-localdev.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg"
  name 'Localdev'
  homepage 'https://pantheon.io/pantheon-localdev-power-users-pre-release'

  app 'Localdev.app'

  uninstall delete: [
                      '~/Library/Application\ Support/localdev',
                      '~/Library/Preferences/io.pantheon.local.helper.plist',
                      '~/Library/Preferences/io.pantheon.local.plist',
                    ]
end
