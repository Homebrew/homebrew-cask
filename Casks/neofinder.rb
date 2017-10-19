cask 'neofinder' do
  version '7.1.3'
  sha256 '86fd8716f36bbae309355cf61f219335e68bfc1cda677e8c462f6f55a3a24a45'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '916ebab0a87a38ba361548d487c00427a7b45f222a0e470b1a94a038dd7db554'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
