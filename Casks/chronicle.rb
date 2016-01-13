cask 'chronicle' do
  version :latest
  sha256 :no_check

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          :checkpoint => 'dfcf04a5f4de8fbf4182fc431f4428f7278afda41d3c1476663e822d7cccbe19'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
