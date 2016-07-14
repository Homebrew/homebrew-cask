cask 'hazel' do
  version '4.0.3'
  sha256 'fd50798cb2e738ddbbf2d9f5dcb53e0b74aa5802386e858c80f80db1ce3fba69'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/release_notes',
          checkpoint: '0e65e37801a2a162bd8b1c020061c546a0d6064915d08f48dc4f7beffcfcdc8d'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
