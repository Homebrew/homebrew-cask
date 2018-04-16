cask 'cctalk' do
  version '1.0.1-576,2018-04-13'
  sha256 '75fddbc3dc5b4af0eb36a3a3f1445c047b9d8b2ddbb0929a9af2a32223e1e81d'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'bc478199318209caf7e3e9b2d482ad8975f6c0acec46ff3fa2cc652b34cb0050'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
