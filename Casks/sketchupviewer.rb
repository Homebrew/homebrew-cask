cask 'sketchupviewer' do
  version :latest
  sha256 :no_check

  # trimble.com is the official download host per the vendor homepage
  # downloads can be found at http://www.sketchup.com/download/all
  url 'https://dl.trimble.com/sketchup/SketchUpViewer-en.dmg'
  name 'SketchUpViewer'
  homepage 'https://www.sketchup.com/products/sketchup-viewer'
  license :gratis

  app 'SketchUpViewer.app'
end
