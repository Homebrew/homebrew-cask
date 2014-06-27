class QuicklookCsv < Cask
  version 'latest'
  sha256 :no_check

  url 'https://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg'
  homepage 'https://github.com/p2/quicklook-csv'

  qlplugin 'QuickLookCSV.qlgenerator'
end
