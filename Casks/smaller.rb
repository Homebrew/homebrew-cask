cask 'smaller' do
  version '1.4'
  sha256 '3d15fe4e216e24c02138da0a598d1c81ed80904cfa662b876acaa9cdefa57901'

  url 'http://25.io/smaller/download/Smaller.zip'
  appcast 'http://25.io/smaller/up/updates.xml',
          checkpoint: 'fe27e73c5138ad30104524a4c01a94203d7ab4cf31d4134ea2ca1e97c1162466'
  name 'Smaller'
  homepage 'http://25.io/smaller/'

  app 'Smaller.app'
end
