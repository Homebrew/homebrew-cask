cask 'localdev' do
  version '0.9.3'
  sha256 'a5cb4c4a47bea142d5edd8b807805bba512ab2ed3e20744c26ec52368a669b11'

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
