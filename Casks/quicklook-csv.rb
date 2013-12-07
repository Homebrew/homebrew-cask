class QuicklookCsv < Cask
  url 'http://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg'
  homepage 'https://github.com/p2/quicklook-csv'
  version 'latest'
  no_checksum
  qlplugin 'QuickLookCSV.qlgenerator'
end
