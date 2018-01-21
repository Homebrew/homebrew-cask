cask 'cctalk' do
  version '0.9.8-516,2018-01-16'
  sha256 '23c2847221876e368708493423a2595949fbe3f651c61df135936f183d0347b3'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '3a73fe6de85796308f854ff69e3f98efc9323c7cb177d84824370188080388b5'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
