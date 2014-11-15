cask :v1 => 'aether' do
  version '1.2.3'
  sha256 '04ca7fbd693bda438436b46315616660ff123ec9d817d802c8c14dcb13711338'

  url "https://github.com/nehbit/aether-public/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  homepage 'http://getaether.net/'
  license :oss

  app 'Aether.app'
end
