cask 'sparkle' do
  version '1.14.0'
  sha256 '9bd221860f129da0ea2d6f15e21581dd6983ca2fe8e9f1eb5948cd8d6961e558'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: 'a1192bf5b07dbc6d763bca7b5aa137e068a915ed53a462b7d87a73c9b66404ce'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
