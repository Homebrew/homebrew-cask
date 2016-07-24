cask 'chronicle' do
  version '6.1.0'
  sha256 '1201c074e615a36eec7f21cd253d1d22c7f0daebecdd07bdae359e377dba1d0c'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: 'ee9637437be8922c95df2977a85ec835fa55266cd6015e2d2e844176a5b37160'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
