cask :v1 => 'nottingham' do
  version '2.1.3'
  sha256 'ccaceba0bc6566ba2850126ae2d456fd6d44b78122117b8e1f3e597ef812bd55'

  url "http://dl.clickontyler.com/nottingham/nottingham20_#{version}.zip"
  name 'Nottingham'
  appcast 'http://shine.clickontyler.com/appcast.php?id=11',
          :sha256 => '77be52d9c62393c316d5f6a5ac10f72579e31189dd08447b2f42e1f81736979d'
  homepage 'https://clickontyler.com/nottingham/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nottingham.app'
end
