cask 'fastrawviewer' do
  version '1.4.9.1358'
  sha256 '48521d8720674fee476365bc5717e1197794bc29709a772b0fa3d2bb3c691bb2'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
