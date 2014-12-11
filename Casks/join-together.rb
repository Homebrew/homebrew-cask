cask :v1 => 'join-together' do
  version :latest
  sha256 :no_check

  url 'http://dougscripts.com/itunes/scrx/jointogetherml.zip'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
