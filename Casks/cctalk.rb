cask 'cctalk' do
  version '0.8.1-190,2017-03-16.15.35'
  sha256 'a9375653b644f2c4ea46e726939c15c4810c1dae3b290e80878b20fc89f8696e'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '50da191b8d58b72dcd008d992b63671ca89c831a3ef2acff0eb8c40dfe3f2133'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
