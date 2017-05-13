cask 'cloudtv' do
  version '3.8.3'
  sha256 '111f18b7459f8f6d3c1189353b0eb160e45a48bd92972594e897384cadd102d1'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=3.8.3'
  name 'CloudTV'
  homepage 'http://cloudtvapp.net/'

  app 'CloudTV.app'
end
