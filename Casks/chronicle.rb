cask 'chronicle' do
  version '9.7.1'
  sha256 '7ed6b98e0b237aa7ce954931ac15cd392d64062587f79c0b25d1cb8d86124aa9'

  url 'https://www.chronicleapp.com/static/downloads/chroniclepro.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle8.xml'
  name 'Chronicle'
  homepage 'https://chronicleapp.com/'

  app 'Chronicle Pro.app'
end
