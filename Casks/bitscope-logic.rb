cask 'bitscope-logic' do
  version '1.2.FC20C'
  sha256 '9522c54851e88f4e69bc7b518fe0d760b790219cc29de001a510ebe2adedbc77'

  url "http://bitscope.com/download/files/bitscope-logic_#{version}.app.tgz"
  name 'BitScope Logic'
  homepage 'http://www.bitscope.com/'

  app 'bitscope-logic.app'
end
