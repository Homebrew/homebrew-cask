cask 'nvidia-geforce-now' do
  version :latest
  sha256 :no_check

  url 'https://download.nvidia.com/gfnpc/GeForceNOW-release.dmg'
  name 'NVIDIA GeForce NOW'
  homepage 'https://www.nvidia.com/en-us/geforce/products/geforce-now/'

  depends_on macos: '>= :yosemite'

  app 'GeForceNOW.app'
end
