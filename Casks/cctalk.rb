cask 'cctalk' do
  version '0.9.7-514,2018-01-05'
  sha256 'e8fdd46874b7766d8cd3c126e07ae75e475a9e450e407daa51e0d45f20432596'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '0c6b3364e2059237881d37b8ef6c0ae2f0c908f1ed6a955adf17b1bdc6c20116'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
