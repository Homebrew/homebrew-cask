cask 'betterandbetter' do
  version :latest
  sha256 :no_check

  # github.com/songhao/BetterAndBetter/releases/download/v1.6.31-alpha/Better.And.Better.1.6.31.Alpha.dmg was verified as official when first introduced to the cask
  url 'https://github.com/songhao/BetterAndBetter/releases/download/v1.6.31-alpha/Better.And.Better.1.6.31.Alpha.dmg'
  name 'BetterAndBetter'
  name '越来越好'
  homepage 'http://better365.cn/'

  app 'BetterAndBetter.app'
end