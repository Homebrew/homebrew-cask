cask 'invisor-lite' do
  version '3.5.1'
  sha256 '77f481352cbabd583aec22d73273a5952c2febdb53bf16b6be3a5bbf3b9f879a'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          :sha256 => '31894c0458d112bc22850856112548afd5fb5918b2c57708b830ac904d027b14'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
