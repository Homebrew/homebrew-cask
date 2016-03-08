cask 'bino' do
  version '1.6.1'

  if MacOS.release <= :leopard
    sha256 '7f6dd796b8117ecfc6f5c90374824ab3d81d74732b94f9b27b617e90ca1d494a'

    # devernay.free.fr/hacks/bino was verified as official when first introduced to the cask
    url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-Leopard-GPL.zip"
  elsif MacOS.release <= :mountain_lion
    sha256 'e2ab9e0ce11d1bc29eba30b6fcc4cb1761d2d2e5d7d6eeac40505b5dafa7d110'

    # devernay.free.fr/hacks/bino was verified as official when first introduced to the cask
    url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-SnossowLeopard-GPL.zip"
  elsif MacOS.release >= :mavericks
    sha256 '7bf618ac2d6ca7f3af0eff0373ba91d5d322168b69cd1e35449cacac003e45a3'

    # devernay.free.fr/hacks/bino was verified as official when first introduced to the cask
    url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-Mavericks-GPL.zip"
  end

  name 'Bino'
  homepage 'http://bino3d.org'
  license :gpl

  app 'Bino.app'
end
