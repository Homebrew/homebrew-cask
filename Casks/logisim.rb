cask 'logisim' do
  version '2.7.1'
  sha256 '41c5555b8021794e268a3fc2c9c51301d919680ae780b000b99380fc492bae7c'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/circuit/#{version.sub(%r{\d+$}, 'x')}/#{version}/logisim-macosx-#{version}.tar.gz"
  name 'Logisim'
  homepage 'http://www.cburch.com/logisim/'
  license :gpl

  app 'Logisim.app'
end
