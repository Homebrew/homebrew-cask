cask 'cctalk' do
  version '0.9.6-502,2017-12-20'
  sha256 '936201f0dc66a8f15a752084ca318dc249c10fdfe69c908f9520a4661d694033'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'c4f3dd41a5bd6a374af4eb15222ebf08f72b4098e494b3458ea5b8c393ee3a65'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
