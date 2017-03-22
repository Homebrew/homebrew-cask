cask 'soundcleod' do
  version '1.1.8'
  sha256 '7f156643b65afa0a5cc42af1e20f1a01756536c13341430d6c2e1d84264c4c1b'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: 'ffd100db4ee4740cb9f025d3f99d1e5b139ad47fc9f212bd63005cb77dacb47b'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
