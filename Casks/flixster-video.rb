cask 'flixster-video' do
  version '2.7.1.637'
  sha256 'eef953f1b4636d158a594728a9bed6ded61f5af1402bd7432cce817e836f1346'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '7486cfdc8e89809389fa19117d196149086788eed99798948443892633a540a1'
  name 'Flixster Video'
  homepage 'https://www.flixstervideo.com/apps'

  app 'Flixster Video.app'
end
