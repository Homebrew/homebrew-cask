cask 'cctalk' do
  version '0.9.3-431,2017-11-06'
  sha256 '586bf9b861638653b5a1fe0eb4b26cd1b90859dfb3a50cbcd386f58b8fde8cf3'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'a55a1c201617c41c6b392a10e8b6af87557fd42d61dd87f9fdce76e908a72a4b'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
