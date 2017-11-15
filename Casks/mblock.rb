cask 'mblock' do
  version '3.4.11'
  sha256 'fcf814848d47f0c383354870358bf44a375da32f71d35046c5542650769ec4ca'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs/',
          checkpoint: '817adf688a66aa1cb7859e2655b688129bffeda3223aa68656aed48eac272fb2'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
