cask :v1 => 'hazel' do
  version :latest
  sha256 :no_check

  url 'http://www.noodlesoft.com/Products/Hazel/download'
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
