cask 'mblock' do
  version '3.3.6'
  sha256 'd86f1fcf7dce8d81661822b60702517efee7400573a0cc6c9d2efb9db042a124'

  url "http://download.makeblock.com/mblock/v_#{version.dots_to_underscores}/mBlock_mac_v#{version}.zip"
  name 'mBlock'
  homepage 'http://www.mblock.cc/'
  license :gpl

  app "mBlock_v#{version}.app"
end
