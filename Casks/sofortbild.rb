cask :v1 => 'sofortbild' do
  version :latest
  sha256 :no_check

  url 'http://www.sofortbildapp.com/download/Sofortbild.zip'
  appcast 'http://www.sofortbildapp.com/appcast.xml',
          :sha256 => 'bfec2c24e8156dc4fb07ead12901cc5734fb7194b76acb6dffd1f42bfe6f68f6'
  name 'Sofortbild'
  homepage 'http://www.sofortbildapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sofortbild.app'
end
