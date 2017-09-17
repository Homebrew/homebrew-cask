cask 'fldigi' do
  version '4.0.9'
  sha256 '1e092632d0f29de3911121c12685c60e9bd602a9fa06139266679c1439c4a832'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '2baa7fe03d9a6f22e8388d3533713a59ff4f6170881afdec34732ed0cad3c139'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
