cask 'fastrawviewer' do
  version '1.5.0.1472'
  sha256 'b08300c6c8508539c0bc58792fb60630d5a90b28d7a2331b69406f3a36f03e93'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
