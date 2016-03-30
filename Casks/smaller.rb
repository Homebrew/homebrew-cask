cask 'smaller' do
  version '1.4'
  sha256 '3d15fe4e216e24c02138da0a598d1c81ed80904cfa662b876acaa9cdefa57901'

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://25.io/smaller/up/updates.xml',
          checkpoint: 'c544450799565e3905e0ddfebabfed02a384aaad5cfbe7367542c15152d3277c'
  name 'Smaller'
  homepage 'http://smallerapp.com/'
  license :commercial

  app 'Smaller.app'
end
