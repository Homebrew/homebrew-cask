cask :v1 => 'invisor-lite' do
  version '3.5.1'
  sha256 '77f481352cbabd583aec22d73273a5952c2febdb53bf16b6be3a5bbf3b9f879a'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  name 'Invisor Lite'
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          :sha256 => '5ee8734a04088fd9d05e1c3222035ea7315f42446e5e925d2cc7d1fb389e0b90'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
