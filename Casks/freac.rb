cask 'freac' do
  version '20151122'
  sha256 'd8078a5cc44e3aca10ecd06bf746c5a09866d26a9cbef6465aab0e32a501ac77'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '128279d3629dc59eaee4eced8ceb8d2ece59f7c761c22e5b9820aa03403ae9a7'
  name 'fre:ac'
  homepage 'https://www.freac.org'

  app 'freac.app'
end
