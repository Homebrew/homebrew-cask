cask 'gzdoom' do
  version '2.4.0'
  sha256 '62a364b94d3bc792dc0ba902b2e173b5a1df7e2e857a9e05e014c3022122e846'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: 'b5b6b362b4c5cd34efb5a4d69719c2f44b7de07c366471c4741683ab136bf4cb'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
