cask 'logisim' do
  version '2.7.1'
  sha256 '41c5555b8021794e268a3fc2c9c51301d919680ae780b000b99380fc492bae7c'

  # sourceforge.net/circuit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/circuit/#{version.sub(%r{\d+$}, 'x')}/#{version}/logisim-macosx-#{version}.tar.gz"
  appcast 'https://sourceforge.net/projects/circuit/rss',
          checkpoint: '2bc256abdc89d06b52713501a3b87c4fce54486d611139451548a007dd0640d7'
  name 'Logisim'
  homepage 'http://www.cburch.com/logisim/'

  app 'Logisim.app'
end
