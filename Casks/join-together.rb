cask :v1 => 'join-together' do
  version :latest
  sha256 :no_check

  url 'http://dougscripts.com/itunes/scrx/jointogetherml.zip'
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '7dfe8ccbbe9d33ca5ea39259bd66e30b3747041120f18647cfe3900645c32e78'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
