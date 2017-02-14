cask 'mblock' do
  version '3.4.5'
  sha256 '825424a1a6f228d0d4167c2b45ae2aa32993c7a81a6ea754476536f4848b19fa'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs',
          checkpoint: '515f190af4a4a3f3bb7f9816c29c9beefc46e0981348a72dd20307478c0213ba'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
