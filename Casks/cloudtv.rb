cask 'cloudtv' do
  version '3.9.3,1532003210'
  sha256 '3a41829d897bd12c5fd4f11681910b3d21a59b3b96c110ee545bf4f89552c48c'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
