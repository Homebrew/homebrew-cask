cask 'cloudtv' do
  version '3.8.9,1529018444'
  sha256 '91516210406b840e004f38e2577049edc9fd4413ea414b04dc557000b1f4285a'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
