cask 'fastrawviewer' do
  version '1.5.7.1636'
  sha256 'c47f4164e12ff3e2ccf95c92fdc434edf1d481ef8e9214682279f6fee3ddf7c4'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
