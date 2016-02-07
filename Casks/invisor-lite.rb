cask 'invisor-lite' do
  version '3.5.1'
  sha256 '77f481352cbabd583aec22d73273a5952c2febdb53bf16b6be3a5bbf3b9f879a'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          checkpoint: '75c0326debf31fec37b3bfdc670a3a59b0c996ce184da9f5a9fef3923a038b3e'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
