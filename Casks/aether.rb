cask :v1 => 'aether' do
  version '1.2.3'
  sha256 '04ca7fbd693bda438436b46315616660ff123ec9d817d802c8c14dcb13711338'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/nehbit/aether-public/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  appcast 'https://github.com/nehbit/aether-public/releases.atom'
  name 'Aether'
  homepage 'http://getaether.net/'
  license :affero

  app 'Aether.app'
end
