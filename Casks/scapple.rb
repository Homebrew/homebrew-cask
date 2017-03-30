cask 'scapple' do
  version '1.2'
  sha256 '1b9968a7927c29b5b4fa4d2c9e5ce78c56e5c3cfbb42847836c2e732018d92c1'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml',
          checkpoint: '6865bd8ca1f721284bf02a32a72a4430382bb0b3fe95689e091e8c33815623ce'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
