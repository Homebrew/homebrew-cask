cask :v1 => 'manuscripts' do
  version '1.0'
  sha256 'adc72c2a7d2c20ced73c775e3aa84e1fee0b25e488be39f12347eb7a0e393dd1'

  url 'http://updates.manuscriptsapp.com/apps/manuscripts/production/download'
  name 'Manuscripts'
  homepage 'http://www.manuscriptsapp.com'
  license :freemium

  app 'Manuscripts.app'
end
