cask 'mblock' do
  version '3.3.8'
  sha256 '24a4fab58635088dc2b7c08e3b34333ca2bd32da37f126d6316bca3bea9fc1ce'

  # download.makeblock.com was verified as official when first introduced to the cask
  url "http://download.makeblock.com/mblock/v_#{version.dots_to_underscores}/mBlock_mac_V#{version}.zip"
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
