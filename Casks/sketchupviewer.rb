cask :v1 => 'sketchupviewer' do
  version :latest
  sha256 :no_check

  # downloads can be found at http://www.sketchup.com/download/all
  url 'https://dl.trimble.com/sketchup/SketchUpViewer-en.dmg'
  homepage 'http://www.sketchup.com/intl/en/'
  license :unknown    # todo: improve this machine-generated value

  app 'SketchUpViewer.app'
end
