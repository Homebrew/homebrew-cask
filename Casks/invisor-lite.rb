cask 'invisor-lite' do
  version '3.5.1'
  sha256 '77f481352cbabd583aec22d73273a5952c2febdb53bf16b6be3a5bbf3b9f879a'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          :sha256 => 'ab73611625302e9b70341d3576070704272a686ba2901c6f383d1a9ef0d72cda'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
