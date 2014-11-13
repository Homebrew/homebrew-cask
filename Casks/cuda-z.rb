cask :v1 => 'cuda-z' do
  version '0.8.207'
  sha256 '5dcb79ada1fe872cf849e050e5c60471fca9ba18178ecf5819859e6990e96196'

  url "https://downloads.sourceforge.net/sourceforge/cuda-z/CUDA-Z-#{version}.dmg"
  homepage 'http://cuda-z.sourceforge.net'
  license :oss

  app 'Cuda-Z.app'
end
