cask 'gruml' do
  version '1.3'
  sha256 '84a645ba8f5b0fc648747dd1faaaae68ac2c43cfd8043983ae42f86acdd09a3b'

  url 'http://www.grumlapp.com/downloads/gruml.dmg'
  appcast 'http://www.grumlapp.com/updates/appcast/gruml.xml',
          checkpoint: '3db2099c4ddd1e19c1d4f00e35ed084db2041a7d2318ac68285fea63184eae3f'
  name 'Gruml'
  homepage 'http://www.grumlapp.com/'

  app 'Gruml.app'
end
