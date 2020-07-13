cask 'dosbox-staging' do
  version '0.75.0'
  sha256 'a0038c7401d239934d25517ca5e8e6006cc3f4cb7060f6ace56609d36bca12ef'

  # github.com/dosbox-staging/dosbox-staging/ was verified as official when first introduced to the cask
  url "https://github.com/dosbox-staging/dosbox-staging/releases/download/v#{version}/dosbox-staging-macOS-v#{version}.dmg"
  appcast 'https://github.com/dosbox-staging/dosbox-staging/releases.atom'
  name 'dosbox-staging'
  homepage 'https://dosbox-staging.github.io/'

  app 'dosbox-staging.app'
end
