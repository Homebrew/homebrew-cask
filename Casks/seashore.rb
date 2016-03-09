cask 'seashore' do
  version '0.5.1'
  sha256 '96463a3642f162a20b160d8df273e9b27a5fdbf9708bee6ebf6a6c8528047765'

  url 'http://downloads.sourceforge.net/sourceforge/seashore/Seashore.zip'
  appcast 'http://sourceforge.net/projects/seashore/rss?path=/seashore%20binaries',
          checkpoint: '7a18dc997e07ea53a59f6c3fc224c2daebea2abd24d80f1bca0fbeafcbb918dd'
  name 'Seashore'
  homepage 'http://seashore.sourceforge.net/'
  license :gpl

  app 'Seashore.app'
end
