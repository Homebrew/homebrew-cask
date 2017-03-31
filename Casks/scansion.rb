cask 'scansion' do
  version '1.12'
  sha256 '5c85eed5db1d3b1bd95152fa155862194e467c7ac4bacdb41f9f3c11052060d4'

  url "http://www.logicpoet.com/releases/scansion/Scansion_#{version}.dmg"
  appcast 'http://www.logicpoet.com/feeds/Scansion.xml',
          checkpoint: 'c9012b984959235fae42c1eb9655a91852874d9600218378988da313217b6494'
  name 'scansion'
  homepage 'http://www.logicpoet.com/scansion/'

  app 'Scansion.app'
end
