cask 'semulov' do
  version :latest
  sha256 :no_check

  url 'https://www.kainjow.com/downloads/Semulov.zip'
  appcast 'https://kainjow.com/updates/semulov.xml',
          :sha256 => '0764186f5017aac6f1adbaf2cdc1732f8038af7cd673909fd612ea9e255adff4'
  name 'Semulov'
  homepage 'https://www.kainjow.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Semulov.app'
end
