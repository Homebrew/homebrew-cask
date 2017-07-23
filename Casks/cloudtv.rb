cask 'cloudtv' do
  version '3.8.5'
  sha256 '2dca199c56a8db1df31efd268f48cfd5e37e8d54d6f29b830e5919b84325471f'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=#{version}"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: '8b98e25e64374be42ab6941fa7023639cf10e18a0f3970460949e8ea6860c6b0'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
