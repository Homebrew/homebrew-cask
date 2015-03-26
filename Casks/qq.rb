cask :v1 => 'qq' do
  version '4.0.2'
  sha256 'cb2352d7e527dc4630f2a2641b7573139be8db5bb8ef54d3087af26db7bf0dc5'

  url "http://dldir1.qq.com/qqfile/QQforMac/QQ_V#{version}.dmg"
  name 'QQ'
  homepage 'http://im.qq.com/macqq/'
  license :commercial

  app 'QQ.app'
end
