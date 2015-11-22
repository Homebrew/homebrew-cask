cask :v1 => 'sketchup' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://www.sketchup.com/download/all
  # trimble.com is the official download host per the vendor homepage
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'
  license :gratis

  suite 'SketchUp 2016'

  zap :delete => [
                  '~/Library/Application Support/SketchUp 2016',
                  '~/Library/Caches/com.sketchup.SketchUp.2016',
                 ]
end
