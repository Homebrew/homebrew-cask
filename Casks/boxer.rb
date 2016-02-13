cask 'boxer' do
  version '1.3.2-20120713'
  sha256 'e96bd463d185d7d6a6f670b3d498ffa61c6f4ae226a535bfa24bad95faea21a1'

  # github.com/downloads/alunbestor/Boxer was verified as official when first introduced to the cask
  url "https://github.com/downloads/alunbestor/Boxer/boxer-#{version}.1.zip"
  appcast 'http://boxerapp.com/appcast',
          checkpoint: '32266a266d972174dbe91c9c840460bee8a734486ff7289ac38adb11dd66e058'
  name 'Boxer'
  homepage 'http://boxerapp.com/'
  license :gpl

  depends_on macos: '>= :leopard'

  app 'Boxer.app'
end
