cask :v1 => 'automatic' do
  version :latest
  sha256 :no_check

  url 'http://codingcurious.com/downloads/Automatic.2.zip'
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          :sha256 => 'a6815fa749fb59e725ddb525692bec4f34d8953b307114bf51fb21ab0d331fb4'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
