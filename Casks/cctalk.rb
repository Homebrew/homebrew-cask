cask 'cctalk' do
  version '0.9.9-557,2018-02-02'
  sha256 '4fe38a5e8c2ff53bf8c085f3611d1fe123fe24bb8418446ba508bc5a2fe54df0'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '1449ce4124eb0188df7fb53f51e0444f8ede414bdbb2e0092f670951f5d544b2'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
