cask 'seashore' do
  version '0.5.1'
  sha256 '96463a3642f162a20b160d8df273e9b27a5fdbf9708bee6ebf6a6c8528047765'

  url 'http://downloads.sourceforge.net/sourceforge/seashore/Seashore.zip'
  appcast 'http://sourceforge.net/projects/seashore/rss?path=/seashore%20binaries',
          checkpoint: 'bcf60985cd8080b2d7d2df038b78e4eff30b60ce2e2d562cf91f2939cf4bb451'
  name 'Seashore'
  homepage 'http://seashore.sourceforge.net/'
  license :gpl

  app 'Seashore.app'
end
