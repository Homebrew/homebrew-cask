cask 'jumpcut' do
  version '0.72'
  sha256 '37c354d14394ca0af113a38295b3c1f8ec4e44e1f9bd90346f7a1cdebea78fc5'

  # github.com/snark/jumpcut was verified as official when first introduced to the cask
  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2"
  appcast 'https://github.com/snark/jumpcut/releases.atom'
  name 'Jumpcut'
  homepage 'https://snark.github.io/jumpcut/'

  depends_on macos: '>= :el_capitan'

  app 'Jumpcut.app'
end
