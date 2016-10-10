cask 'nottingham' do
  version '2.1.3'
  sha256 'ccaceba0bc6566ba2850126ae2d456fd6d44b78122117b8e1f3e597ef812bd55'

  url "http://dl.clickontyler.com/nottingham/nottingham20_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=11',
          checkpoint: 'f5f9477be149a49ca79728c8d8b16feef8e183edd1ea6ee693d29e6d01256910'
  name 'Nottingham'
  homepage 'https://clickontyler.com/nottingham/'

  app 'Nottingham.app'
end
