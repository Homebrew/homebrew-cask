cask 'jumpcut' do
  version '0.70'
  sha256 '976448c206dfe844b7e444482df6ea977b5456d6f92dc3cb9b30133dc4337432'

  # github.com/snark/jumpcut was verified as official when first introduced to the cask
  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2"
  appcast 'https://github.com/snark/jumpcut/releases.atom'
  name 'Jumpcut'
  homepage 'https://snark.github.io/jumpcut/'

  depends_on macos: '>= :high_sierra'

  app 'Jumpcut.app'
end
