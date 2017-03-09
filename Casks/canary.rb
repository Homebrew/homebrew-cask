cask 'canary' do
  version '0.915'
  sha256 '29a2eba5efe77d67651bd093282c439e9a170289a60a930ce22646a7a2cc05b3'

  # rink.hockeyapp.net/api was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050',
          checkpoint: '98ed64148362b44459e2ba2ef3d8f70cd1d3350f16e6e15e04491fbfa1bbca84'
  name 'Canary'
  homepage 'https://canarymail.io'

  auto_updates true

  app 'canary.app'
end
