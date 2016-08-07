cask 'scrivener' do
  version '2.80.3'
  sha256 '9ea0910d950b36159d5e722ebcf04e8f1fff48ad667382a01e05edbbfb02fdb0'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_106_#{version}.zip"
  appcast 'https://www.literatureandlatte.com/downloads/scrivener-2.xml',
          checkpoint: '79e3d31dd436e68082f47d8d3690967b250f6f810eca34b4e057f3255003cdde'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'
  license :commercial

  app 'Scrivener.app'
end
