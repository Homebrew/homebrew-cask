cask :v1 => 'intensify-pro' do
  version '1.0.4_703'
  sha256 '9234595b20dc5c4053ba9f34a26d026e3915964f1b25c31ad3100cbac426babc'

  url "http://cdn.macphun.com/updates/IntensifyPro/IntensifyPro_Distribution_v#{version.gsub('.','_')}.zip"
  name 'Intensify Pro'
  homepage 'http://macphun.com/intensify'
  license :commercial

  app 'Intensify Pro.app'
end
