cask :v1 => 'lightpaper' do
  version '0.9.0'
  sha256 'e90ad6d7052573a8048b65c590f9227f75a55690731ccf6986ded5982fc02afe'

  # The cl.ly url is from the official vendor homepage (redirected from goo.gl/xiOgxx)
  url 'http://f.cl.ly/items/3q1Q3C472c3G2L2l2X0m/LightPaper_v0.0.9.dmg'
  appcast 'http://links.clockworkengine.com/lp-mac-update-feed',
          :sha256 => '88b4051a4255b9d82534f3fc502ecab5fa2d7df73a94ef563e02bec7848276c2'
  homepage 'http://clockworkengine.com/lightpaper-mac/'
  license :unknown    # todo: improve this machine-generated value

  app 'LightPaper.app'
end
