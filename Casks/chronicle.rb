cask 'chronicle' do
  version :latest
  sha256 :no_check

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          :sha256 => '5793f549385f8b3e7f56d72f5e1c80afad508d9b7d4c88b38e4c3de1679b01f3'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
