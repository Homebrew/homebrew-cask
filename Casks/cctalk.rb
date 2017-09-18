cask 'cctalk' do
  version '0.8.6-315,2017-08-30'
  sha256 '89d0d00fb1509361499ac627f95c49a1d2243aadb75aab3a295d239818588fc7'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '008ae8d18cb87ee0a992cd2898e9b02a2c3e6724b035b238732baf62cf5b2ff4'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
