cask 'chronicle' do
  version '5.7.0'
  sha256 '1171b77577cdfabc5cf1a140ba909a0697fcb157fc0ba2a0a8fca7ed639ab687'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '143465ba0dda54d7de226e50fe24966c6faed507cf3dde641ffc25d809a89567'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
