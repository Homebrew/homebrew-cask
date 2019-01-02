cask 'cloudtv' do
  version '3.9.8,1544866292'
  sha256 '04d08ada5e42bac9fe23a9ab14d433d501cd6f72faeab2b2e8292eb87a86ea0c'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
