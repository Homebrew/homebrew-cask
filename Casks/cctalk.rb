cask 'cctalk' do
  version '0.8.2-242,2017-06-14.21.26'
  sha256 'a3afdfb1e6db9f512c4a154001d200aa224fe974ee4c9f76acccf9711018130f'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '2c6841769e9c743903b26117fb5308b9fe9efc5c41d431a4d43a905edd1e24a4'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
