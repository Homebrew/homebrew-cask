cask :v1 => 'hazel' do
  version '3.3.5'
  sha256 '5cda4a33077e62d4ea8728c48c0b1ad1c766dde367ec6ae4702d0f5d5f4655d7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  name 'Hazel'
  appcast 'http://update.noodlesoft.com/Products/Hazel/generate-appcast.php',
          :sha256 => 'd406a5aaa7ac1ddbe8da979cda8605a1b04c3c393ca5dd90cf9a9e9fb2a6cb0f'
  homepage 'http://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Hazel.prefPane'

  zap :delete => [
                  '~/Library/Application Support/Hazel',
                  '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                 ]
end
