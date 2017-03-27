cask 'cctalk' do
  version '0.8.1-176,2017-01-12.23.37'
  sha256 '701f597df2d21ff5c71b12fdb9311d2661dfc28c4782106cd55533519e7c4a9d'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '50da191b8d58b72dcd008d992b63671ca89c831a3ef2acff0eb8c40dfe3f2133'
  name 'CCTalk'
  homepage 'http://www.cctalk.com/download/'

  app 'CCtalk.app'
end
