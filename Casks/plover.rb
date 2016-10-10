cask 'plover' do
  version '3.0.0'
  sha256 '89505ebad2700e38d57b5c710550dac0ad4b9a44bd1e15ba8b1f162f0b464694'

  # github.com/openstenoproject/plover was verified as official when first introduced to the cask
  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/Plover-#{version}.dmg"
  appcast 'https://github.com/openstenoproject/plover/releases.atom',
          checkpoint: '8eb7487c0243890078c45e7f0a3ca5b856f3d3b980ec9737f5aa87607037b91e'
  name 'Plover'
  homepage 'http://stenoknight.com/wiki/Main_Page'

  accessibility_access true

  app 'plover.app'

  zap delete: '~/Library/Application Support/plover/'
end
