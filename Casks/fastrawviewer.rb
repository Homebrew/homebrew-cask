cask 'fastrawviewer' do
  version '1.4.8.1348'
  sha256 'fc580fd87189a88d7cc0811d6dd854bef18df3b0db0ed84746df828ef269e15c'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
