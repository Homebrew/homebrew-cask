cask 'bitscope-dso' do
  version '2.8.FE22H'
  sha256 '487bd954c54740c9c9d2810db25ec7cfa2905b5808b068eb18db0d046ae574d1'

  url "http://bitscope.com/download/files/bitscope-dso_#{version}.app.tgz"
  name 'BitScope DSO'
  homepage 'http://www.bitscope.com/'

  app 'bitscope-dso.app'
end
