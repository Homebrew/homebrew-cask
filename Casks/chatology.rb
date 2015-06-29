cask :v1 => 'chatology' do
  version :latest
  sha256 :no_check

  url 'https://flexibits.com/chatology/download'
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chatology.app'
end
