cask 'sonora' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  appcast 'https://getsonora.com/updates/sonora2.xml',
          :sha256 => '961a6fecdddf1f5e1dba7360a697a09781d202b61bc48369240bcef226f7f441'
  name 'Sonora'
  homepage 'https://getsonora.com/'
  license :gratis

  app 'Sonora.app'
end
