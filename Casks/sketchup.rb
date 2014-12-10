cask :v1 => 'sketchup' do
  version :latest
  sha256 :no_check

  # downloads can be found at http://www.sketchup.com/download/all
  # trimble.com is the official download host per the vendor homepage
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  homepage 'http://www.sketchup.com/intl/en/'
  license :unknown    # todo: improve this machine-generated value

  suite 'SketchUp 2015'

  zap :delete => [
                  '~/Library/Application Support/SketchUp 2015',
                  '~/Library/Caches/com.sketchup.SketchUp.2015',
                 ]
end
