cask :v1 => 'chatology' do
  version :latest
  sha256 :no_check

  url 'https://flexibits.com/chatology/download'
  appcast 'https://flexibits.com/chatology/appcast.php'
  homepage 'http://flexibits.com/chatology'
  license :unknown

  app 'Chatology.app'
end
