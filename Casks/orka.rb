cask 'orka' do
  version '1.1.0'
  sha256 '1899e2ece05ee7e83b6e360e5d42cef063e57a70c7e48030cfb35935f73954da'

  # dropbox.com/sh/6k0yno0s2527zgv was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/sh/6k0yno0s2527zgv/AAB9oiWv9IsIZNArPHd6dHRia/orka-cli-macos?dl=1'
  appcast 'https://orkadocs.macstadium.com/docs/downloads'
  name 'Orka CLI'
  homepage 'https://orkadocs.macstadium.com/docs'

  binary 'orka-cli-macos', target: 'orka'
end
