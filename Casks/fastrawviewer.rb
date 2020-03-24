cask 'fastrawviewer' do
  version '1.5.5.1599'
  sha256 '08d2226cd9f8184ddac0fd5ddd50014c54d33eb74dcc39d6bc531482de42d73e'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
