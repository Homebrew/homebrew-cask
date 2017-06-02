cask 'qqlive' do
  version '1.0.2.30100'
  sha256 '2499f0a3f8e4d12f847ae45891d7a701001c57dba7ecc79736ef2431303d0801'

  url "http://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  name 'QQLive'
  name '腾讯视频'
  homepage 'https://v.qq.com/'

  app 'QQLive.app'
end
