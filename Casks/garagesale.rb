cask 'garagesale' do
  version '7.0.17'
  sha256 '89590b6e45b9a6d44cedc652ef39af64359fc8090109403162c3a5457a6bc562'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b83b659a4c853a6138def4da94c6fcdd.rss'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  app 'GarageSale.app'
end
