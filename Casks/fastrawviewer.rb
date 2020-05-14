cask 'fastrawviewer' do
  version '1.5.6.1615'
  sha256 'c46b9905f80628dc22e079368cf85726a6dcee9348a70a267bb2a16d8a2a97a2'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
