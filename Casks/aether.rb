cask 'aether' do
  version '1.2.3'
  sha256 '04ca7fbd693bda438436b46315616660ff123ec9d817d802c8c14dcb13711338'

  # github.com/nehbit/aether-public was verified as official when first introduced to the cask
  url "https://github.com/nehbit/aether-public/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  appcast 'https://github.com/nehbit/aether-public/releases.atom',
          checkpoint: '56e557a46ba7e6a98174a30212cc12c51c093ca09791fda3dea01e3514ebdece'
  name 'Aether'
  homepage 'http://getaether.net/'

  app 'Aether.app'
end
