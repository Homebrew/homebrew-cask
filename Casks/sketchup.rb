cask :v1 => 'sketchup' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://www.sketchup.com/download/all
  # trimble.com is the official download host per the vendor homepage
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/intl/en/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'SketchUp 2015'

  zap :delete => [
                  '~/Library/Application Support/SketchUp 2015',
                  '~/Library/Caches/com.sketchup.SketchUp.2015',
                 ]
end
