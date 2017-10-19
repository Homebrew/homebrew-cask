cask 'cctalk' do
  version '0.9.0-363,2017-09-19'
  sha256 '9dade4b2061eb5a6662242e944e5de003993fac656bddf672d38bf33c098387f'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'b831c64d8d284fb34fc8edfc89d18e19c45af065a07bf5ee8bc0383ea12878d9'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
