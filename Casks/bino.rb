cask 'bino' do
  version '1.6.6'
  sha256 '31f0c7590511c9c5bfb92f488de82565bdc4c945b934a1e8cd40a110beb49fd5'

  # devernay.free.fr/hacks/bino was verified as official when first introduced to the cask
  url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-Mavericks-GPL.zip"
  appcast 'http://devernay.free.fr/hacks/bino/',
          checkpoint: '1fbe3a6c931f36c91debea2c2a00fb0a52dd4d7c1acd5551956879d5cc8f2fde'
  name 'Bino'
  homepage 'https://bino3d.org/'

  depends_on macos: '>= :mavericks'

  app 'Bino.app'
end
