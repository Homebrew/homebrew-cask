cask :v1 => 'broomstick' do
  version '0.91'
  sha256 '2cfb70829bd2456b4a2c88b2b5bf037f3a479df13c58a40620f659f9df5b8b2b'

  url "http://downloads.zibity.com/Broomstick/Broomstick%20#{version}.zip"
  homepage 'http://www.zibity.com/broomstick'
  license :unknown    # todo: improve this machine-generated value

  app 'Broomstick.app'
end
