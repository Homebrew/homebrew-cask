cask 'cctalk' do
  version '1.0.0-568,2018-03-16'
  sha256 '4c0dc206774aafd99b46cd7ebb684ad7cd2c29cba5070eb06d8bc470ee7a04a9'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '3980d6e2e5e4ff0577a63cc758fb4f48b90251821e8147a75c1b876f75140cd8'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
