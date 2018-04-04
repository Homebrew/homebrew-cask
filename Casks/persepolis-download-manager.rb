cask 'persepolis-download-manager' do
  version '3.1.0'
  sha256 'bed6e1b35468978fe734c8afab23fbb03cc19dc556df2360c222c7a3e3de7295'

  # github.com/persepolisdm/persepolis was verified as official when first introduced to the cask
  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version.dots_to_underscores}_mac.dmg"
  appcast 'https://github.com/persepolisdm/persepolis/releases.atom',
          checkpoint: '294274c55ce9d292b0aa7387876715179af49cd873ed4d73a45e3d43b001a302'
  name 'Persepolis'
  homepage 'https://persepolisdm.github.io/'

  app 'Persepolis Download Manager.app'
end
