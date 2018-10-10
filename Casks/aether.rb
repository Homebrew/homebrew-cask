cask 'aether' do
  version '1.2.3'
  sha256 '04ca7fbd693bda438436b46315616660ff123ec9d817d802c8c14dcb13711338'

  # github.com/nehbit/aether was verified as official when first introduced to the cask
  url "https://github.com/nehbit/aether/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  appcast 'https://github.com/nehbit/aether/releases.atom'
  name 'Aether'
  homepage 'https://getaether.net/'

  app 'Aether.app'
end
