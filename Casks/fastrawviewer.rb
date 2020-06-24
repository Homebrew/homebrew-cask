cask 'fastrawviewer' do
  version '1.6.0.1639'
  sha256 '355a1fd67aa56986628b4fe4ccdb8084d8403ff3cb7a2b94a9ca2a5c0f238cc8'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
