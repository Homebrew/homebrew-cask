cask :v1 => 'logisim' do
  version '2.7.1'
  sha256 '41c5555b8021794e268a3fc2c9c51301d919680ae780b000b99380fc492bae7c'

  url "https://downloads.sourceforge.net/project/circuit/#{version.gsub(/\d$/, 'x')}/#{version}/logisim-macosx-#{version}.tar.gz"
  homepage 'http://ozark.hendrix.edu/~burch/logisim/'
  license :oss

  app 'Logisim.app'
end
