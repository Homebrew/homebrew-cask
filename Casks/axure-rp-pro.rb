cask 'axure-rp-pro' do
  version :latest
  sha256 :no_check

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Pro-Setup.dmg'
  name 'Axure RP'
  homepage 'https://www.axure.com/'
  license :commercial

  app 'Axure RP Pro 7.0.app'
end
