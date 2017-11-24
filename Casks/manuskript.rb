cask 'manuskript' do
  version '0.5.0'
  sha256 '1ffd46477693115a39c33dd2a45dae7b59105745630c1c85f50e5c0e540a2f3c'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom',
          checkpoint: '147f7096ff6e485c250e1a0759704b40c4ea29fbae36dc19dcea32ec32d8b00a'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
