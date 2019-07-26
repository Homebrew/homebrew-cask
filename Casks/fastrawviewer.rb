cask 'fastrawviewer' do
  version '1.5.2.1501'
  sha256 '560cfb44eeba1574684987aa4f7b80cdfa11b2082a2ddf5e9d742bfddb6dca28'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
