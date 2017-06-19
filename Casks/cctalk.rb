cask 'cctalk' do
  version '0.8.2-242,2017-06-14.21.26'
  sha256 'a3afdfb1e6db9f512c4a154001d200aa224fe974ee4c9f76acccf9711018130f'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'c08047aa69dc3ba5b8bc9c24ebf3bbc473e91090435a6107898543a4afa543ca'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
