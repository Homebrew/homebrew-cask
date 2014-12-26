cask :v1 => 'nottingham' do
  version '2.1.3'
  sha256 'ccaceba0bc6566ba2850126ae2d456fd6d44b78122117b8e1f3e597ef812bd55'

  url "http://dl.clickontyler.com/nottingham/nottingham20_#{version}.zip"
  homepage 'https://clickontyler.com/nottingham/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nottingham.app'
end
