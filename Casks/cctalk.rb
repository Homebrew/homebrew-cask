cask 'cctalk' do
  version '0.8.5-288,2017-08-04.10.45'
  sha256 '9509441ee8ce45e28d53dbf186b45bbf2c8048b27f22fd63275a1f726608d3e7'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '684d0ca3504362b51993b9dd99a82c8a1ee77b9f91be7cf1a640ae0f5f27a7dd'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
