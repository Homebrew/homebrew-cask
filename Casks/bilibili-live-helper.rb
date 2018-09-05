cask 'bilibili-live-helper' do
  version '1.1.3'
  sha256 '77a280c590fdf51eba6c6207055a0ded7c383d25d4a62b0bf5142b4ce4dbece6'

  url "http://s2.danmaku.live/bilibili-live-helper-mac-v#{version}.zip"
  name 'Bilibili Live Helper'
  name 'Bilibili直播弹幕库'
  homepage 'http://bilibili.danmaku.live/'

  app 'Bilibili直播弹幕库.app'
end
