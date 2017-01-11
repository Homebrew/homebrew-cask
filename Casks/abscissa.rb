cask 'abscissa' do
  version '3.4.6'
  sha256 '319c6871e4f42eaf6b1925aff66859024241d5c11a542badeb6993d287da3da2'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast 'http://rbruehl.macbay.de/Abscissa/Downloads/',
          checkpoint: 'a5b279ad4abd26be9934916a946d708517383bc459d3edcbe248bfc354ae6c99'
  name 'Abscissa'
  homepage 'http://rbruehl.macbay.de/Abscissa/'

  app "Abscissa-#{version}/Abscissa.app"
end
