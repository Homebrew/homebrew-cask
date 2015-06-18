cask :v1 => 'automatic' do
  version :latest
  sha256 :no_check

  url 'http://codingcurious.com/downloads/Automatic.2.zip'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
