cask 'mblock' do
  version '3.4.8'
  sha256 'cb836071d38039fb09340e8456022cbf20a26d98f4536f9fd96ba572f572e50e'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs',
          checkpoint: '0ae993a841cd4cc7341e765ddfe8f4f84b1559915c9b564eb888afd0cb48bf8a'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
