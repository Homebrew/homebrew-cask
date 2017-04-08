cask 'mblock' do
  version '3.4.6'
  sha256 'eda804040b11cae94befc7496f50bd1604cb38add085c3851301cacb8a7aa360'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs',
          checkpoint: 'eae248ff688253aa1a80cac15850bb574d0c085066563d83e5b853a0f89d9acb'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
