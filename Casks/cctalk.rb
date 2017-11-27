cask 'cctalk' do
  version '0.9.4-458,2017-11-23'
  sha256 '9ebc74eee250667f5362d01bd0837f08c20070691f335b75be53f3ba41ae5218'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'c8411d1339c8c278c56f304d9cfcc79e5b6f3a6f991b58e8b9399f317827832c'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
