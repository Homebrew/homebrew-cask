cask 'seashore' do
  version '0.6.5'
  sha256 'c283e9225a6d0740812029772a55f0033db4e19f5ee0e81735114c9cf1017dee'

  # The following is a fork of the original Seashore (hosted on SourceForge) based on the original source code
  # A fork was included in place of the original project since the original project is unmaintained
  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
