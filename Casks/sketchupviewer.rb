cask 'sketchupviewer' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://www.sketchup.com/download/all
  # dl.trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpViewer-en.dmg'
  name 'SketchUpViewer'
  homepage 'https://www.sketchup.com/products/sketchup-viewer'

  app 'SketchUpViewer.app'
end
