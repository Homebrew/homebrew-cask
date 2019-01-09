cask 'mblock' do
  version '3.4.11'
  sha256 'fcf814848d47f0c383354870358bf44a375da32f71d35046c5542650769ec4ca'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "https://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs/'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
