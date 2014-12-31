cask :v1 => 'quicklook-csv' do
  version :latest
  sha256 :no_check

  url 'https://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg'
  homepage 'https://github.com/p2/quicklook-csv'
  license :oss

  qlplugin 'QuickLookCSV.qlgenerator'
end
