cask 'chronicle' do
  version '7.0.0'
  sha256 '720fbb1a42b322bbb5bd5b58b442ff10a99e48d5859108805d544374b91504ba'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '8f52b8ef7b15b38d7f0bac6ed068e1580ee5af4746786b83b749223b54133f59'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
