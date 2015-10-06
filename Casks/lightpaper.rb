cask :v1 => 'lightpaper' do
  version '0.9.0'
  sha256 'e90ad6d7052573a8048b65c590f9227f75a55690731ccf6986ded5982fc02afe'

  # cl.ly is the official download host per the vendor homepage
  url 'http://f.cl.ly/items/3q1Q3C472c3G2L2l2X0m/LightPaper_v0.0.9.dmg'
  appcast 'http://links.clockworkengine.com/lp-mac-update-feed',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'LightPaper'
  homepage 'http://www.ashokgelal.com/lightpaper-for-mac/'
  license :gratis

  app 'LightPaper.app'
end
