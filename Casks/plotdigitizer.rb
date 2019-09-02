cask 'plotdigitizer' do
  version '2.6.8'
  sha256 '56ddfb70fd6eeb9598a83c1ffa44125b46944d86fb69de8e40a59c939f6876cf'

  # downloads.sourceforge.net/plotdigitizer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/plotdigitizer/rss'
  name 'Plot Digitizer'
  homepage 'https://plotdigitizer.sourceforge.io/'

  app 'PlotDigitizer.app'
end
