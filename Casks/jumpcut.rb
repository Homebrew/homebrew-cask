cask 'jumpcut' do
  version '0.71'
  sha256 '8448afa7a4f07163ecf9c0aa3d1eef3670b2bb46253e67adb847e391289fd9e7'

  # github.com/snark/jumpcut was verified as official when first introduced to the cask
  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2"
  appcast 'https://github.com/snark/jumpcut/releases.atom'
  name 'Jumpcut'
  homepage 'https://snark.github.io/jumpcut/'

  depends_on macos: '>= :el_capitan'

  app 'Jumpcut.app'
end
