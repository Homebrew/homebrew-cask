cask 'sketchup-pro' do
  version '2017'
  sha256 'dd7f8e631bce4e9ddd6f1febd1324f6601025b47c742f1f05893f703893b3289'

  # downloads can be found at http://www.sketchup.com/download/all
  # trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpPro-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version}"

  zap delete: [
                "~/Library/Application Support/SketchUp #{version}",
                "~/Library/Caches/com.sketchup.SketchUp.#{version}",
              ]
end
