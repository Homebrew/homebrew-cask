cask 'localdev' do
  version '0.10.1'
  sha256 '2d467fb36bc5f9794aca48d06d4b38886e83c3bbb1819ab5239d4a62031849fb'

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
