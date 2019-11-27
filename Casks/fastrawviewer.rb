cask 'fastrawviewer' do
  version '1.5.4.1553'
  sha256 '3c9a131b0f0574bcedf32a1bd739c0ddfdaa9f9f963e3fe386e929a7cb9ee5b2'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
