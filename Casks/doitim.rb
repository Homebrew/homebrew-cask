cask :v1 => 'doitim' do
  version '4.1.1'
  sha256 'a60dc7c735b5ace55de410ccaa40febc0d3a0ca6b45bc7755e91206c263c3fa3'

  url "http://version.doit.im/dl/Doit.im.#{version}.zip"
  homepage 'http://doit.im/'
  license :commercial

  app 'Doit.im.app'
end
