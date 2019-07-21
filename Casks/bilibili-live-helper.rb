cask 'bilibili-live-helper' do
  version '2.1.1'
  sha256 '632c07da51aa4431fb51a9e2f0a4474d56cbff9846be44b1d9ad07e92f078a3e'

  url "http://s2.danmaku.live/%E5%BC%B9%E5%B9%95%E5%BA%93-mac-v#{version}.zip"
  appcast 'http://bilibili.danmaku.live/js/app.240c1034.js'
  name 'Bilibili Live Helper'
  name 'Bilibili直播弹幕库'
  homepage 'http://bilibili.danmaku.live/'

  app '弹幕库.app'
end
