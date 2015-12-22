cask 'hazel' do
  version '3.3.7'
  sha256 '2b62354eb885e809ee48aba37de6dd701d4ab22ec4686b66efdc08ac36162efc'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  name 'Hazel'
  appcast 'http://update.noodlesoft.com/Products/Hazel/generate-appcast.php',
          :sha256 => 'c0668f7c61d403b4690d48eb410eb49e8247ef3f91fafe97e4228b07d8a7678a'
  homepage 'http://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Hazel.prefPane'

  zap :delete => [
                  '~/Library/Application Support/Hazel',
                  '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                 ]
end
