cask 'cloudtv' do
  version '3.9.9,1551537841'
  sha256 'b617132cf47ec180b3201ed99e2352ee8c55f3fa943cd9268396d62c49df89f8'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
