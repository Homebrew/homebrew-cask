cask 'cctalk' do
  version '0.8.1-223,2017-05-17.21.49'
  sha256 'cb57ea0dd82ced44c006eceaee8979784c532650248a91ff3cd14ba2730eb579'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '5af68358c49fcb4be9db0f185dc174d8c09beac13ca710d8141cafaf6162de70'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
