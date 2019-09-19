cask 'jumpcut' do
  version '0.71'
  sha256 '7446e74f195390e74336cd3e3a9ea6b865f1db12e173b7b8237ae75c7568d17a'

  # github.com/snark/jumpcut was verified as official when first introduced to the cask
  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2"
  appcast 'https://github.com/snark/jumpcut/releases.atom'
  name 'Jumpcut'
  homepage 'https://snark.github.io/jumpcut/'

  depends_on macos: '>= :high_sierra'

  app 'Jumpcut.app'
end
