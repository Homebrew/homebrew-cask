cask 'plotdigitizer' do
  version '2.6.8'
  sha256 '56ddfb70fd6eeb9598a83c1ffa44125b46944d86fb69de8e40a59c939f6876cf'

  url "https://downloads.sourceforge.net/plotdigitizer/PlotDigitizer_#{version}_MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/plotdigitizer/rss',
          checkpoint: '755ba0b18407b5cc8a7b3526876ca11d5d2f7b136481e9fe87956b9947dc942e'
  name 'Plot Digitizer'
  homepage 'http://plotdigitizer.sourceforge.net'

  app 'PlotDigitizer.app'
end
