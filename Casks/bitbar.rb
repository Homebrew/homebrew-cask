cask 'bitbar' do
  version '1.9.0'
  sha256 '06f432bcff54b5d74ddc7b59c158b2c42f59ff0957b8aebd1b3dafb6e2c738be'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '0a55b5c816501219eaf084629ac58a8328f5c1f203e2b192ae16e062ec80392e'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
