cask 'fldigi' do
  version '4.0.9'
  sha256 '1e092632d0f29de3911121c12685c60e9bd602a9fa06139266679c1439c4a832'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'e5ffd672f246bebb73f677f1b771b69f8b8751df2c9da437f51591a77265b3ef'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
