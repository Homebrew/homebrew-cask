cask 'chronicle' do
  version '6.0.1'
  sha256 '3e3b57158d701fafe7e75747a45b31e1ac3ae8519b8136b6aa9ce5acd5da10e1'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '72d729bd9e17b839fd2f74c2f741cc02ada06e6c427e59135954c42bff0b89f5'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
