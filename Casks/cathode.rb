cask 'cathode' do
  version '2.4.1'
  sha256 'd2cfbbf480cf9e921f7f76bf7972d60dad4b734abbe7b424b84890b22c589c25'

  # amazonaws.com/cjcaufield was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/cjcaufield/products/cathode/cathode_#{version.no_dots}.zip"
  appcast 'http://store.secretgeometry.com/appcast.php?id=7',
          checkpoint: 'd5a68264c7b23c600344384e8982f0e41562a1848587ef0e5944fc04c554d72a'
  name 'Cathode'
  homepage 'http://www.secretgeometry.com/apps/cathode/'

  app 'Cathode.app'
end
