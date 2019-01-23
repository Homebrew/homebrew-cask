cask 'fastrawviewer' do
  version '1.4.11.1402'
  sha256 '90db6b2c194aea42c50da33074dc7a78ce4bfa32c7f7a626768adb0d9df5bee3'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
