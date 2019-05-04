cask 'fastrawviewer' do
  version '1.5.1.1490'
  sha256 'b85f9cf1907084e0aab16dfca19d21c81d3a19974549d6554159a518eb745b0b'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
