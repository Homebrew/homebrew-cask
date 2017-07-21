cask 'cctalk' do
  version '0.8.4-275,2017-07-20.19.21'
  sha256 '1c935522e0e9b89cc49cb98f6b0dcd20b5b65e9a90806534aa6295465a114da5'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '2968b4d9ed3442e34a53426e2bbb3f73ea061c8a6eaf7ded3161e68d50eedf71'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
