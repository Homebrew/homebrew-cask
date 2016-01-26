cask 'plotdigitizer' do
  version '2.6.8'
  sha256 '56ddfb70fd6eeb9598a83c1ffa44125b46944d86fb69de8e40a59c939f6876cf'

  url "http://downloads.sourceforge.net/sourceforge/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg"
  name 'Plot Digitizer'
  homepage 'http://plotdigitizer.sourceforge.net'
  license :gpl

  app 'PlotDigitizer.app'
end
