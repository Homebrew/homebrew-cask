cask 'marsedit' do
  version '3.7.4'
  sha256 '2133ccfacd3243f96cb4417733e028762f68e91fd2a0ebf8f88d8f014590a877'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          checkpoint: 'a5300508cfcfea4d58209bd488c0eb6dbf1ccb20a9fef344430993eeb8a87692'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
