cask 'fastrawviewer' do
  version '1.4.10.1385'
  sha256 '5ffda4ba6530ab6902a32ffe42109b341a542a3f8d8ce393b69323af9f473822'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
