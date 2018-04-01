cask 'persepolis-download-manager' do
  version '3.0.1'
  sha256 '7ba0a50ebb6c911fa32e87842e5aab191d375d5215ca89fad2b8c3f0739c37be'

  # github.com/persepolisdm/persepolis was verified as official when first introduced to the cask
  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version.dots_to_underscores}_mac.dmg"
  appcast 'https://github.com/persepolisdm/persepolis/releases.atom',
          checkpoint: '7c540321e4b2c1e268a8a148d2b87f2e2d1e41d74c0e87ffe2853a103a3a7f0d'
  name 'Persepolis'
  homepage 'https://persepolisdm.github.io/'

  app 'Persepolis Download Manager.app'
end
