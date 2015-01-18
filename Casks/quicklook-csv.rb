cask :v1 => 'quicklook-csv' do
  version :latest
  sha256 :no_check

  # googlecode.com is the official download host per the vendor homepage
  url 'https://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg'
  name 'QuickLookCSV'
  homepage 'https://github.com/p2/quicklook-csv'
  license :oss

  qlplugin 'QuickLookCSV.qlgenerator'
end
