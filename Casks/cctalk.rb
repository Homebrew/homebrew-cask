cask 'cctalk' do
  version '0.8.1-231,2017-06-02.16.13'
  sha256 'c7b6b77b49a86d342797907980777b6301f3f1157dc80ec9adcaaf1171e81a1e'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'c08047aa69dc3ba5b8bc9c24ebf3bbc473e91090435a6107898543a4afa543ca'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
