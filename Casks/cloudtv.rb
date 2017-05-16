cask 'cloudtv' do
  version '3.8.3'
  sha256 '111f18b7459f8f6d3c1189353b0eb160e45a48bd92972594e897384cadd102d1'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=#{version}"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: 'd0888b4b32c0ea6adab6b6a6619a3ee7e510e4066b9b4310bf2647578fe9681f'
  name 'CloudTV'
  homepage 'http://cloudtvapp.net/'

  app 'CloudTV.app'
end
