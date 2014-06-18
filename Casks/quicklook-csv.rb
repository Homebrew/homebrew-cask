class QuicklookCsv < Cask
  url 'https://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg'
  homepage 'https://github.com/p2/quicklook-csv'
  version 'latest'
  sha256 :no_check
  qlplugin 'QuickLookCSV.qlgenerator'
end
