cask 'cctalk' do
  version '0.8.1-223,2017-05-17.21.49'
  sha256 '638bcee0c4b983969db1efa79b94e8e623a90fc8c91ff62f627b47853c7f49a9'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '44e6ba955040ae82c895f41f47c29146f3bf191f50b3904f27d0de12260626ee'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
