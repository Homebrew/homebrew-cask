class Sketchup < Cask
  version 'latest'
  sha256 :no_check

  # downloads can be found at http://www.sketchup.com/download/all
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  homepage 'http://www.sketchup.com/intl/en/'

  suite 'SketchUp 2014'
end
