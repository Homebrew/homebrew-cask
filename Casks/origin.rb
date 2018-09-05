cask 'origin' do
  version '10.5.25.7131'
  sha256 '42cfe5178d47199f4ce88f52903ddc30376b815df11ab7c8cda5a407f7e6c61e'

  # origin-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg'
  appcast 'https://api1.origin.com/autopatch/2/upgradeFrom/10.5.24.5022/en_US/PROD?platform=MAC&osVersion=10.13.0'
  name 'Origin'
  homepage 'https://www.origin.com/'

  app 'Origin.app'
end
