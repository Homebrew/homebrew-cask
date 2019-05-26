cask 'garagesale' do
  version '7.0.16'
  sha256 '7e2bcf398121331a819e50970cf306486eb492c0078e8c1376233c232e021f87'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b83b659a4c853a6138def4da94c6fcdd'
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'

  app 'GarageSale.app'
end
