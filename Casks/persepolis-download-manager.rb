cask 'persepolis-download-manager' do
  version '3.1.0'
  sha256 '70be7692e4b7a5f596a570dbcd4b9c5c077ab5481986952fa59c3dc228bc9bb5'

  # github.com/persepolisdm/persepolis was verified as official when first introduced to the cask
  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version.dots_to_underscores}_mac.dmg"
  appcast 'https://github.com/persepolisdm/persepolis/releases.atom'
  name 'Persepolis'
  homepage 'https://persepolisdm.github.io/'

  app 'Persepolis Download Manager.app'
end
