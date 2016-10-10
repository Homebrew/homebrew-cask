cask 'chronicle' do
  version '6.6.1'
  sha256 '622bdacaf4cab9dd329b17426ba922d2358f08025f7c4055519a47610d4d1066'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: 'ff7b3f1f508cdbcd382df87e51fe6bac8cefbdd20455b1a195363a60f808c480'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
