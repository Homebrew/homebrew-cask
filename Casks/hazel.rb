cask 'hazel' do
  version '3.3.7'
  sha256 '2b62354eb885e809ee48aba37de6dd701d4ab22ec4686b66efdc08ac36162efc'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'http://update.noodlesoft.com/Products/Hazel/changelog.php',
          checkpoint: 'ea87190add8dce6bca682ac10c71e86dc3becfe6bd6e06dbdf58245c0210289e'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
