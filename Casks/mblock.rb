cask 'mblock' do
  version '3.4.10'
  sha256 '3e4fc8fbb3f30c869d1084c889ab72d98eacdceaa07dabda6a59874840a7dee6'

  # mblock.makeblock.com was verified as official when first introduced to the cask
  url "http://mblock.makeblock.com/mBlock_mac_V#{version}.zip"
  appcast 'http://www.mblock.cc/release-logs/',
          checkpoint: '0228ad3a1db5da56e462ce09c6ac83ee2ada9cb3372ea5828b62aea043fce4db'
  name 'mBlock'
  homepage 'http://www.mblock.cc/'

  app "mBlock_v#{version}.app"
end
