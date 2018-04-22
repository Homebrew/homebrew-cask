cask 'flixster-video' do
  version '2.7.1.638'
  sha256 'eef953f1b4636d158a594728a9bed6ded61f5af1402bd7432cce817e836f1346'

  # dtmmt9rxsy2no.cloudfront.net was verified as official when first introduced to the cask
  url 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '58614097c1c907f7a693ffd55ffcfc493a51d5ad1e176f80ba7deebe361f606d'
  name 'Flixster Video'
  homepage 'https://www.flixstervideo.com/apps'

  app 'Flixster Video.app'
end
