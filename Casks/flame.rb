cask 'flame' do
  version '0.2.2'
  sha256 '72e7b5959ab608dbf38bbb33fac086c33544f97702ec16fdf1194f4a9bdf843c'

  # tominsam-web.s3.amazonaws.com/uploads was verified as official when first introduced to the cask
  url "https://tominsam-web.s3.amazonaws.com/uploads/2012/Flame-#{version}.zip"
  appcast 'https://movieos.org/code/flame/'
  name 'Flame'
  homepage 'https://movieos.org/code/flame/'

  app 'Flame.app'
end
