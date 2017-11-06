cask 'cctalk' do
  version '0.9.1-413,2017-10-30'
  sha256 'e4efd2662d55e272853b6e318f1ea37e79bd727c36f861f84cb722af6ef90617'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '78ba392b8622e7ebd70bac606ea67e512736df04a2afe1b376732a61f559388d'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
