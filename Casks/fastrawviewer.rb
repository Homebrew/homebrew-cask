cask 'fastrawviewer' do
  version '1.5.7.1634'
  sha256 '0d533d01d44f521ca31f42417827f790d7475b6be8967c62354db027b9e8ce50'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
