cask :v1 => 'axure-rp-pro' do
  version :latest
  sha256 :no_check

  # cachefly.net is the official download host per the vendor homepage
  url 'https://axure.cachefly.net/AxureRP-Pro-Setup.dmg'
  name 'Axure RP'
  homepage 'https://www.axure.com/'
  license :commercial

  app 'Axure RP Pro 7.0.app'
end
