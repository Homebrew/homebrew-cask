cask 'origin' do
  version '10.5.24.5022'
  sha256 '0edd6b39e89ecd80d96e871b4d0c29d5317abcd6e7251d03bc6d544ffdf11566'

  # origin-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg'
  appcast 'https://api1.origin.com/autopatch/2/upgradeFrom/10.5.24.5022/en_US/PROD?platform=MAC&osVersion=10.13.0'
  name 'Origin'
  homepage 'https://www.origin.com/'

  app 'Origin.app'
end
