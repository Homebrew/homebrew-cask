cask 'fastrawviewer' do
  version '1.5.5.1597'
  sha256 '7e87f25db4b97f7d9385b38ec16f44f1d5a59e3b136852401d06d95ef7fa6f34'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
