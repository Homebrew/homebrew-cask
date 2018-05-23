cask 'cctalk' do
  version '1.0.2-633,2018-05-02'
  sha256 '911d55e413237d59fb6c56ef385ea1b4844af1125f2da4fabf9d442e07931eba'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '0b45fde96b3b18518eb9eccfc5a40480fc44f79700f66d236cb1458b318ef447'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
