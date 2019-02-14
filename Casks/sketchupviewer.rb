cask 'sketchupviewer' do
  version :latest
  sha256 :no_check

  url 'https://www.sketchup.com/sketchup/SketchUpViewer-en-dmg'
  name 'SketchUpViewer'
  homepage 'https://www.sketchup.com/products/sketchup-viewer/'

  app 'SketchUpViewer.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchupviewer.sfl*'
end
