cask 'cctalk' do
  version '7.3.2,707'
  sha256 '6eb2d1dd2e7c245e5b005554aaae0ca70ca8e5a8c9969005eb682f4cebcbe43e'

  url 'https://www.cctalk.com/webapi/basic/v1.1/version/down?apptype=1&terminalType=8&versionType=103',
      user_agent: :fake
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
