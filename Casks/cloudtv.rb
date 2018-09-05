cask 'cloudtv' do
  version '3.9.6,1532958488'
  sha256 '9c5140c9497739219d31849ab267ee9f6f77fae1f09ea2cee178ccfa2b819ff0'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/#{version.before_comma}/#{version.after_comma}/CloudTV-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
