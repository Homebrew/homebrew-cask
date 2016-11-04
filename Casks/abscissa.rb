cask 'abscissa' do
  version '3.4.6'
  sha256 '319c6871e4f42eaf6b1925aff66859024241d5c11a542badeb6993d287da3da2'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  name 'Abscissa'
  homepage 'http://rbruehl.macbay.de/Abscissa'

  app "Abscissa-#{version}/Abscissa.app"
end
