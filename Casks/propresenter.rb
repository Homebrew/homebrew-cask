cask 'propresenter' do
  version '6.0.15_b15084'
  sha256 '39926c06a7fa092e8d5f0200bd92ed735d7ebbbe05a7281137b005a6c5d02c61'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: '8bd78a9343af00c4256acd5ba2c3a96db5f4f317ca552ed8b34e13e552636c3e'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
