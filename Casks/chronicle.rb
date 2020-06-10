cask 'chronicle' do
  version '9.6.1'
  sha256 '61a8e6d7fe06c326a026ed655b9d940814e877962ca7bf452958dab1c6619ca8'

  url 'https://www.chronicleapp.com/static/downloads/chroniclepro.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle8.xml'
  name 'Chronicle'
  homepage 'https://chronicleapp.com/'

  app 'Chronicle Pro.app'
end
