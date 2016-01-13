cask 'sonora' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'https://getsonora.com/updates/sonora2.xml',
          :checkpoint => '1f1bc37f92e4e02d1370733d50c9460bb0266e79cd2efe50303381f2769f50b7'
  name 'Sonora'
  homepage 'https://getsonora.com/'
  license :gratis

  app 'Sonora.app'
end
