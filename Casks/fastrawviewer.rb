cask 'fastrawviewer' do
  version '1.4.6.1250'
  sha256 'bb1bce5e2f29aaa3c4c0224f9700b17bd38c3ca348f51720e2d3ff2155934365'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
