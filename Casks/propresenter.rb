cask 'propresenter' do
  version '6.0.17_b15094'
  sha256 '60ff19f15ed24dd6829a0ad12cb91dae137a5b80e76aab6ec84e212b1a3e47e8'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: '38f0c0dd87cb3a8e4657b3041d5f9d5e782df7bc6255933eb18106b87491232e'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
