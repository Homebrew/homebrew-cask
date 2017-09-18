cask 'iffmpeg' do
  version '6.5'
  sha256 'a00f27f78249435a059fffd9ec2568489365de893222b704b051059d3cbad36c'

  url 'http://www.iffmpeg.com/iFFmpeg.dmg'
  appcast 'http://www.iffmpeg.com/download.html',
          checkpoint: '6dacd24364098f3c2baa90056c07c3abf676f1210aee66dbcd032138931c64a8'
  name 'iFFmpeg'
  homepage 'http://www.iffmpeg.com/'

  app 'iFFmpeg.app'
end
