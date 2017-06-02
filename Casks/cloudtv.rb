cask 'cloudtv' do
  version '3.8.4'
  sha256 'a7ec2e55ddff9dfb22abd2990e6e82c0dc8ea2b804e0df5f48cdcc9f99233131'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=#{version}"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: 'c15e92ae96a894d8bba5b68c6e01461be44f9dd7590653498bf4fb655b94ad3d'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
