cask 'cctalk' do
  version '0.9.5-475,2017-12-06'
  sha256 '47c9a3be6faee521573ca8642d2af539385428da6253e5b64d8bb9d7cc30364f'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/in/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-xianghu-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: 'a710ded258910ad6e8232cf015988911340d3fd3579b8a3db5bbf9c613950a3b'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
