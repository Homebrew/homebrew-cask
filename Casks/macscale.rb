cask :v1 => 'macscale' do
  version :latest
  sha256 :no_check

  # brinscall.com is the official download host per the vendor homepage
  url 'https://www.brinscall.com/MacScale.zip'
  name 'MacScale'
  appcast 'https://www.brinscall.com/updates/macscale.xml',
          :sha256 => '8b100a46b7173663058865a3c9cc94dac117260ae5dccc1142b334aea7cbf531'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
