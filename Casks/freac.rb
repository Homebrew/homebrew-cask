cask 'freac' do
  version '20151122'
  sha256 'd8078a5cc44e3aca10ecd06bf746c5a09866d26a9cbef6465aab0e32a501ac77'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  name 'fre:ac'
  homepage 'https://www.freac.org'
  license :gpl

  app 'freac.app'
end
