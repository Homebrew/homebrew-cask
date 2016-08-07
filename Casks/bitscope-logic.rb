cask 'bitscope-logic' do
  version '1.2.DJ20B'
  sha256 'e0093f292209f6ad306873911c3551bdafa201e09ed634c9080e3b58e9bf6196'

  url "http://bitscope.com/download/files/bitscope-logic_#{version}.app.tgz"
  name 'BitScope Logic'
  homepage 'http://www.bitscope.com'
  license :gratis

  app 'bitscope-logic.app'
end
