cask 'axure-rp' do
  version :latest
  sha256 :no_check

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app 'Axure RP 8.app'
end
