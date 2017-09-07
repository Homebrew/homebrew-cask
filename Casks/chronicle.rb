cask 'chronicle' do
  version '7.0.3'
  sha256 '3f28357cc22e64c779e47d03f219b736c09b5ae1c111af9a9984faae8dbb89d5'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '15f57c9e657518058fe8ae54f5f007e17be7bb368952701e4da92795726562a7'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
