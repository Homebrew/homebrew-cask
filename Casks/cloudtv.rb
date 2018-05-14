cask 'cloudtv' do
  version '3.8.8,1526203813'
  sha256 '8fca04618c5c6c690bfa5f1e86798cb09b6522e6f2ec38ef6cfd9ffacc5bb7a5'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: '42cca602c9207f63a334fee9f94854f5c1e84619c9165d89495e503003c30ded'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
