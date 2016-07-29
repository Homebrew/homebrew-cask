cask 'hazel' do
  version '4.0.4'
  sha256 'de01730a13bae394036f732de7438dfd59c6bd90ca80df4db1b3059cb854b327'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/release_notes',
          checkpoint: 'e388f88a192ef6a147671ef825bc960f1dbfbd5bd0756ee3f1cf4f45257ef56a'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
