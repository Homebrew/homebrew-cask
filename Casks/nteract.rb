cask 'nteract' do
  version '0.1.0'
  sha256 '6b94849ed2c6cf69920e0ee06972ae58a533ab02baa8fdedcfe84cd6995812e1'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '05ee2590f10b27aa8e32e198cdd6ebb842395393b1853b226ae8f1c737a2ad44'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
