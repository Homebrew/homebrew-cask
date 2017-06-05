cask 'lightzone' do
  version '4.1.7'

  if MacOS.version <= :mavericks
    # spideroak.com/share/NN2GO5ZQGMYTM/lightzone/c%3A/Users/arcti_000/Public/LightZone-mac was verified as official when first introduced to the cask
    url 'https://spideroak.com/share/NN2GO5ZQGMYTM/lightzone/c%3A/Users/arcti_000/Public/LightZone-mac/LightZone-4.1.7-SnowLeopard.dmg'
    sha256 '31e2e38b65c8f17d388e8c318e1d1fc340ff97c3537c7954503f5e5908e13156'
  else
    # spideroak.com/share/NN2GO5ZQGMYTM/lightzone/c%3A/Users/arcti_000/Public/LightZone-mac was verified as official when first introduced to the cask
    url 'https://spideroak.com/share/NN2GO5ZQGMYTM/lightzone/c%3A/Users/arcti_000/Public/LightZone-mac/LightZone-4.1.7-Sierra.dmg'
    sha256 '95082b843d5bcc3f0083642eeb130ff347dd15dc977e9895a16f79e7fac5b743'
  end

  name 'Lightzone'
  homepage 'http://lightzoneproject.org/'

  app 'LightZone.app'
end
