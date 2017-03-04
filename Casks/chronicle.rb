cask 'chronicle' do
  version '6.7.3'
  sha256 'bbc1f1d926edd307eef15f8502b06dd8f96ad617dee441d8382761a4211748e8'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '290492ee4ce3299f358a6f162f76e282601246a21b81861b69ccd50d2d64bb11'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
