cask 'bitscope-dso' do
  version '2.8.FE22G'
  sha256 'd32d924368bc8e093d4be9f1d2c90d7741d8347ac18f10db1d31c964cef44b16'

  url "http://bitscope.com/download/files/bitscope-dso_#{version}.app.tgz"
  name 'BitScope DSO'
  homepage 'http://www.bitscope.com'
  license :gratis

  app 'bitscope-dso.app'
end
