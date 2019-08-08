cask 'cewe' do
  version '6.4.4'
  sha256 '35eed803d6d68e4684063717b285bb7e868080d85d62cb0e9bb05ed883a128f0'

  # photoprintit.com/api/getClient/18299-da_DK/hps was verified as official when first introduced to the cask
  url 'https://dls.photoprintit.com/api/getClient/18299-da_DK/hps/om_seo_goo_x_18299_x_18299-AF9Ytche8LJh7/mac'
  name 'CEWE'
  homepage 'https://www.cewe.dk/'

  app 'cewe.dk.app'
end

