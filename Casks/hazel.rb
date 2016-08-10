cask 'hazel' do
  version '4.0.5'
  sha256 '7ab4d8b8195773a5c9d1ff560f1c6931abd3c4830d2b29c6fa2ef810126056bf'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: '708d1d26e7a6cf570a21e862a9b7980ddae57883a1c8357ce87df13e72fd13eb'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
