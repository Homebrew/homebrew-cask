cask :v1 => 'semulov' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/Semulov.zip'
  name 'Semulov'
  appcast 'http://kainjow.com/updates/semulov.xml',
          :sha256 => 'd458ce08acdc5848d165c397192bb502f12a878b10680e355b31e47b54f57442'
  homepage 'http://www.kainjow.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Semulov.app'
end
