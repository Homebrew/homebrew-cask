cask 'plotdigitizer' do
  version '2.6.8'
  sha256 '56ddfb70fd6eeb9598a83c1ffa44125b46944d86fb69de8e40a59c939f6876cf'

  url "https://downloads.sourceforge.net/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/plotdigitizer/rss',
          checkpoint: 'c0fd9266dfc80997706665c54af4155ede4a9477c518011832cc67416fd04b1e'
  name 'Plot Digitizer'
  homepage 'http://plotdigitizer.sourceforge.net/'

  app 'PlotDigitizer.app'
end
