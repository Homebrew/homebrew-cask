cask 'fastrawviewer' do
  version '1.4.12.1407'
  sha256 'ecc50b71732e8658e17fa5f4f471be0cfa91f2651d34e0f4798570eab8b82705'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
