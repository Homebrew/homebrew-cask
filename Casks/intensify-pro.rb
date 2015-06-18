cask :v1 => 'intensify-pro' do
  version '1.0.4_703'
  sha256 '9234595b20dc5c4053ba9f34a26d026e3915964f1b25c31ad3100cbac426babc'

  url "http://cdn.macphun.com/updates/IntensifyPro/IntensifyPro_Distribution_v#{version.gsub('.','_')}.zip"
  name 'Intensify Pro'
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          :sha256 => '2e8537a93ce1f48b5dcb3746488f9e87c82db7f6abc586b27b50fda1645bd2cf'
  homepage 'http://macphun.com/intensify'
  license :commercial

  app 'Intensify Pro.app'
end
