class Quicksilver < Cask
  url 'http://qs0.qsapp.com/plugins/download.php'
  homepage 'http://qsapp.com/'
  version 'latest'
  no_checksum

  link :app, 'Quicksilver.app'
end
