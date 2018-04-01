cask 'cloudtv' do
  version '3.8.6'
  sha256 'fb96cbfbf4cb5bc45fa03cdb01caec81a1249a95cda86ef4c76e5847e0da3c6a'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=#{version}"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: '260e36a28c5947855e9b904094049f573ca0f75aa55b2e6e272c7681a4084d30'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
