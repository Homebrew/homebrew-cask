cask 'aether' do
  version '1.2.3'
  sha256 '04ca7fbd693bda438436b46315616660ff123ec9d817d802c8c14dcb13711338'

  # github.com/nehbit/aether-public was verified as official when first introduced to the cask
  url "https://github.com/nehbit/aether-public/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  appcast 'https://github.com/nehbit/aether-public/releases.atom',
          checkpoint: '950d21a97d51a45b278ec5efea34a815662be861234c79030d215c1afbcd4fbb'
  name 'Aether'
  homepage 'http://getaether.net/'
  license :affero

  app 'Aether.app'
end
